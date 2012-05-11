--- 
layout: post
title: "PPL: Day 17 - Systems Part 2"
wordpress_id: 540
wordpress_url: http://timharvey.net/?p=540
categories: []

tags: []

---
_This is part of the Peer Pressure Learning 30 series. Jump to [my introduction to the experiment](http://timharvey.net/2010/06/11/peer-pressure-learning-experiment/) if you got here from Google or some other site._

Several mornings this past week were taken up by building [http://ervscafe.com/](http://ervscafe.com/) with [Vince](http://twitter.com/vincefrancesi). We did the site for free to help out the restaurant painfully stuffed into the 7th floor of our building. We love having Erv (his real name is Kevin) around to feed us. It's a pretty ghetto site, but the idea was quick and dirty. With that pretty well done (I need to do a bit to the Rails app so he can update his specials), I'm back to having a bit more time for PPL. Hopefully tonight will be my last weekday post done in the evening for a while.

## Today's reading: pg 164 - pg 170

While this chapter continued with a bunch of Java-specific framework details (Swing, JBoss, Beans, etc), one particular concept leapt off the page and seemed to have a potential impact on a large Rails app:> In Spring, you write your business logic as Plain-Old Java Objects. POJOs are purely focused on their domain. They have no dependencies on enterprise frameworks (or any other domains). Hence, they are conceptually simpler and easier to test drive.Whoa! Can you imagine an entire Rails app that used Models as data containers and plain Ruby classes to hold all the business logic? It frightens be rather a lot, but the idea that all that business logic could be more easily transferred to another language, a different framework, or more easily modified sounds incredible. Separating persistence (and framework crap) from business logic sounds like win to me. Downside? That seems to fight against much of the Rails conventions and common practice, so implementing a solution in that manner would require treading very rough, new territory. I have a small portion of an app I did constructed somewhat this way. I've been wanting to write up a blog post on the topic as it's a pretty in-depth implementation. This chapter gives me hope that I just might have been onto something purely by chance!Another great standout from the chapter is the discussion of decision making. This nails it:

> We often forget that it is also best to postpone decisions until the last possible moment. This isn't lazy or irresponsible; it lets us make informed choices with the best possible information.And finally, the best bit of all:

> ...never forget to use the simplest thing that can possibly work.

Well said.

Next up? Emergence. Again, I have no idea what that means, but it sounds impressive (it has to be, the word has 3 syllables).

Miles continues to bang out his PPL blog posts. His latest is on the [Python framework Django](http://mileszs.com/blog/2010/06/29/ppl30-day-16-django.html) (pronounced, "JANG-go", I think).
