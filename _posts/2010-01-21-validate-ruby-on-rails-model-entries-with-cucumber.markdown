---
layout: post
legacy: true
title: Validate Ruby on Rails model entries with Cucumber
wordpress_id: 294
wordpress_url: http://timharvey.net/?p=294
categories: []

tags: []


redirect_from:
- /2010/01/21/validate-ruby-on-rails-model-entries-with-cucumber/

---
If you use Cucumber, chances are good that at some point in your testing, you needed to verify that a certain set of database records had been created. While this flies in the face of most BDD best practices, I've run into a few edge cases the last few months that required this level of minutia. Ideally, you'd use RSpec or Test::Unit for checking database/model level details, and let Cucumber focus on the higher level full stack checking.

In my case, I needed to verify that the admin tool I'm creating builds records necessary for the public side of the site (which hasn't been built yet). There really wasn't any visibility in the admin area to this data, except when it's created. While I did have a solid set of RSpec tests for the model functionality, I felt it necessary to make sure those model methods were called correctly through the controllers and routing that went on.

As a result, I wrote this step:

{% highlight ruby %}
Then /^I should find these "([^"]*)" records$/ do |model_name, table|
  model_name.constantize.count.should == table.hashes.count
  table.hashes.each do |record|
    model_name.constantize.find(:first, :conditions => record).should_not be_nil
  end
end
{% endhighlight %}

You would use it in your Cucumber feature like this (intentionally bland example):

{% highlight ruby %}
Then I should find these "Post" records
  | title          | permalink      | category   |
  | A blog article | a-blog-article | Technology |
{% endhighlight %}

The first row specifies the fields that will be used as conditions. The following rows will be used to search against. The step will make sure that at least record in the model matches. It will also verify that the number of records in the model matches the number of rows in the Cucumber feature.
