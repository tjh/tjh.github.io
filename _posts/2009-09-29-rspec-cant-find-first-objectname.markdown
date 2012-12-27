---
layout: post
title: rSpec "Can't find first {objectName}"
wordpress_id: 36
wordpress_url: http://www.timharvey.net/2009/09/29/rspec-cant-find-first-objectname/
categories: []

tags: []

redirection:
- /2009/09/29/rspec-cant-find-first-objectname/

---

While cleaning up several rSpec tests for a Ruby on Rails app, I ran across an error that didn't show up in Google. It didn't make sense that my tests kept failing.

The solution was simple, but not obvious to a new rSpec user. The clean way to specify a validation is:

    it { should validate_uniqueness_of(:title) }

Unfortunately, I kept getting the error "Can't find first Post" (where Post is the name of my object being tested. After some digging, it turns out that the shorthand notation assumes that you will have already added at least one Post to the database. It finds the first Post, then adds an identical one, expecting a failure.

This would have been fine, but my "before" block didn't have the usual

    Post.create!( :title => 'Title' )

Instead, I had:

    @valid_attributes = { :title => 'Title' }

So...you can either have your before block add at least one record, or skip the clean notation and do this:

    it 'should only accept unique Titles' do
      Post.create! @valid_attributes
      Post.new.should validate_uniqueness_of(:title)
    end

That's it!
