---
layout: post
title: Simple progressive feature rollout

---

I absolutely love continuous deployment and similarly can't stand
long-running feature branches. The rub is features that actually take a
bit of work to get finished up. I'm a big fan of deploying the least
possible functionality and iterating from there. Along those lines, I
have always liked the idea behind James Golick's [rollout
gem](https://github.com/jamesgolick/rollout). Deploy your code and new
features regularly, but decouple deployment and feature availability.
And, to take it a step further, don't limit yourself to deploying a
feature all or nothing. Consider release to a select group.

I can't find the reference, but GitHub uses flags to release features.
They have something akin to an "employees" switch that allows them to
use features before the rest of us. Brilliant.

While I like rollout, I wasn't ready to add *another* gem to our repo. I
had a feature I want to rollout in stages, in case anything goes wrong
or has unexpected consequences. So I whipped up a simple class using on
of my favorite toys, "Rails.cache".

Now, I can wrap functionality in the view like so:

{% highlight ruby %}
<% if YourAppName::Feature.active?('billing-report', authenticated_user) %>
  <li><%= link_to 'Billing Report', billing_report_path %></li>
<% end %>
{% endhighlight %}

And from the console, I can change the on/off flags (since the feature
is off by default in production, and on for other environments) for all
members of the User class:

{% highlight ruby %}
YourAppName::Feature.set_for_user_type('billing-report', User, true)
{% endhighlight %}

Or turn it on for a single user:

{% highlight ruby %}
YourAppName::Feature.set_for_user('billing-report', User.last, true)
{% endhighlight %}

Of course, you could get crafty at the console and activate a random
group of users, etc.

It's all dirt simple, but gets the job done. Once the feature is in full
usage, I'll go back and remove the #active? checks.

Here's the class:

{% highlight ruby %}
module YourAppName
  #
  # Simple feature on/off switches based on user and a slug. Allows
  # deployment of code that is conditionally used.
  #
  class Feature
    class << self
      # Public: is the feature active for the given user?
      #
      # feature_slug - A String that identifies the feature.
      #                of any ActiveRecord class that identifies who
      # user         - A user that is operating the app (an instance
      #                is authenticated...could be Admin, User, etc.).
      #
      # Returns a Boolean.
      def active?(feature_slug, user)
        # Features are always on when not in production
        return true if !Rails.env.production?

        begin
          !!Rails.cache.read(feature_cache_key(feature_slug, user))
        rescue => e
          return false
        end
      end

      # Public: Change the on/off flag for an entire group
      # of users.
      #
      # feature_slug - A String that identifies the feature.
      # clazz        - The ActiveRecord user class to change the flag for.
      # on_off_flag  - Boolean representing whether the feature is on or off.
      #
      # Returns nothing.
      def set_for_user_type(feature_slug, clazz, on_off_flag)
        clazz.all.each do |user|
          set_for_user(feature_slug, user, on_off_flag)
        end
      end

      # Public: Change the on/off flag for a single user.
      #
      # feature_slug - A String that identifies the feature.
      # user         - The user instance to change the flag for.
      # on_off_flag  - Boolean representing whether the feature is on or off.
      #
      # Returns nothing.
      def set_for_user(feature_slug, user, on_off_flag)
        Rails.cache.write(feature_cache_key(feature_slug, user), on_off_flag)
      end

    private

      # Private: generate the slug to be used for identifying the
      # feature within our persistence store.
      #
      # feature_slug - A String that identifies the feature.
      # user         - A user instance (Admin, Buyer, Dealer).
      #
      # Returns a String.
      def feature_cache_key(feature_slug, user)
        "#{feature_slug}-#{user.class.name}-#{user.id}"
      end

    end
  end
end
{% endhighlight %}
