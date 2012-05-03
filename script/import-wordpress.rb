# Script from Vitto Botta blog post:
# http://vitobotta.com/how-to-migrate-from-wordpress-to-jekyll/#converting-to-markdown

%w(rubygems sequel fileutils yaml active_support/inflector).each{|g| require g}

require File.join(File.dirname(__FILE__), "downmark_it.rb")

module WordPress
  def self.import(database, user, password, table_prefix = "wp", host = 'localhost')
    db = Sequel.mysql(database, :user => user, :password => password, :host => host, :encoding => 'utf8')

    %w(_posts _drafts images/posts/featured).each{|folder| FileUtils.mkdir_p folder}

    query = <<-EOS

      SELECT 	post_title, post_name, post_date, post_content, post_excerpt, ID, guid, post_status, post_type, post_status,
      		 (	SELECT 	guid
      			FROM 	#{table_prefix}_posts
      			WHERE 	ID = (	SELECT 	meta_value
      							FROM	#{table_prefix}_postmeta
      							WHERE 	post_id = post.ID AND meta_key = "_thumbnail_id") ) AS post_image

      FROM #{table_prefix}_posts AS post
      WHERE  post_type = 'post'

    EOS

    db[query].each do |post|

      title      = post[:post_title]
      slug       = post[:post_name]
      date       = post[:post_date]
      content    = DownmarkIt.to_markdown post[:post_content]
      status     = post[:post_status]
      name       = "%02d-%02d-%02d-%s.markdown" % [date.year, date.month, date.day, slug]
      image      = File.basename(post[:post_image]) rescue ""
      categories = []
      post_tags  = []

      puts title

      `wget -O "images/posts/featured/#{image}" "#{post[:post_image]}"` unless File::exists?("images/posts/featured/#{image}") || post[:post_image].nil?

      data = {
         'layout'        => 'post',
         'title'         => title.to_s,
         'excerpt'       => post[:post_excerpt].to_s,
         'image'         => image,
         'wordpress_id'  => post[:ID],
         'wordpress_url' => post[:guid],
         'categories'    => categories,
         'tags'          => post_tags
       }.delete_if { |k,v| v.nil? || v == ''}.to_yaml

      File.open("#{status == 'publish' ? '_posts' : '_drafts'}/#{name}", "w") do |f|
        f.puts data
        f.puts "---"
        f.puts content
      end
    end
  end
end
