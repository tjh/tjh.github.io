---
layout: post
title: When building web apps, utilize proper indexing
wordpress_id: 251
wordpress_url: http://timharvey.net/?p=251
categories: []

tags: []


redirect_from:
- /2010/01/19/when-building-web-applications-you-have-to-utilize-proper-indexing/

---
Rails does a lot of crazy wonderful stuff. The downside is that all that awesome power gives you the ability to make some pretty dumb moves. Just because I can get the URL for one of the sites my [Am I Down?](http://www.AmIDownHQ.com/) users get alerts for by using...{% highlight ruby %}current_user.sites[0].host.url{% endhighlight %}...doesn't mean that I necessarily should. That command generates some heavy SQL, running a join across several tables (after running a separate query to get the current user):

{% highlight sql %}
SELECT subscriptions.id AS t0_r0, subscriptions.user_id AS t0_r1, subscriptions.host_id AS t0_r2, subscriptions.alert_id AS t0_r3, subscriptions.created_at AS t0_r4, subscriptions.updated_at AS t0_r5, hosts.id AS t1_r0, hosts.url AS t1_r1, hosts.created_at AS t1_r2, hosts.updated_at AS t1_r3 FROM subscriptions LEFT OUTER JOIN hosts ON hosts.id = subscriptions.host_id WHERE ( subscriptions.user_id = 35) ORDER BY subscriptions.updated_at DESC, hosts.url ASC
{% endhighlight %}

That's going to take 21ms to run, just for a lookup. Is that a big deal? Perhaps not. Indexes (in the right situations) may make that SQL query run at an acceptable level.

# Real world problems

In the case of [Am I Down?](http://www.AmIDownHQ.com/), my service that alerts you when your web sites go down, I run some pretty slick lookups back through the logs for a web site to see if the change we see in a sites' status is significant enough to warrant an alert. Since there are thousands of web site checks going on every hour (currently over 20,000 each day), a 21ms SQL statement is seriously bad. You can see the result below: [NOTE: Screenshot lost during blog migration away from Wordpress]

# The solution

The logging table didn't have an index on the host_id, so it took forever (20ms or so) to find only the log entries for the current host, which for various reasons happens 8-10 times per check. So almost a 1/4 second is taken up by SQL checks every time I checked a site. You do the math and that means you can only sustain about 1,200 sites (240 checks per minute, every 5 min) for each checking worker. Not good.You'll see that the there's a vertical bar towards the right of the graph, after which the bars drop off considerably. That would be the point I added an index for the host_id. Suddenly the time drops to about 3ms. That's more like 3,600 sites for each checking worker. Much better!

# Improving your Rails app

For a Rails app, the [Rails_Indexes](http://github.com/eladmeidar/rails_indexes) plugin offers a great way to track down any obvious indexes you may be missing. To speed up queries and reduce the number of queries you make, take a look at [Bullet](http://github.com/flyerhzm/bullet).
