---
layout: legacy_post
title: "PPL: Day 5 - Good comments"
wordpress_id: 468
wordpress_url: http://timharvey.net/?p=468
categories: []

tags: []


redirect_from:
- /2010/06/18/ppl-day-5-good-comments/

---
_This is part of the Peer Pressure Learning 30 series. Be sure to read [my introduction to the experiment](http://timharvey.net/2010/06/11/peer-pressure-learning-experiment/) if this doesn't make sense to you!_[![](http://timharvey.net/wp-content/Screen-shot-2010-06-18-at-8.56.39-AM1.png "PPL Chain")](http://dontbreakthechain.com/share/timharvey/one-up/40350)It's Friday, and I'm a little apprehensive about PPL, heading into the weekend. I've made great progress this week, reading and blogging all week long. I need to keep the big mo going and stay on the wagon. Here's my progress thus far (and yes, I counted the several days of ramp-up blogging...don't judge me):Today's reading was on Comments. I made it through the first section on "Good comments". I stopped my reading short before hitting the rather long "bad comments" heading.## Today's reading: pg 53 - pg 59

If you're a developer, I can't recommend Clean Code enough. It's been tremendous already. There were so many good points that jumped out to me, I don't feel like I could do them justice by summarizing them. So instead, I want to quote some of my favorite lines:- If our programming languages were expressive enough, or if we had the talent to subtly wield those languages to express our intent, we would not need comments very much -- perhaps not at all.

- The proper use of comments is to compensate for our failure to express ourself in code. Note that I used the word _failure_. I meant it. Comments are always failures.

- Why am I so down on comments? Because they lie. Not always, and not intentionally, but too often. The older a comment is, and the farther away it is from the code it describes, the more likely it is to be just plain wrong. The reason is simple. Programmers can't realistically maintain them.

- Truth can only be found in one place: the code.

- Some comments are necessary or beneficial. Keep in mind, however, that the only truly good comment is the comment you found a way not to write.

I'm working on an OSS [Twitter app](http://github.com/tjh/should-i-stfu) that scores people's level of annoying. I put together this code to cache a single user's Twitter account details, only updating them (calling out to a slow API) every 24 hours. The #find_by_username runs the whole show. I love how crisp that method is now (it was a wreck 24 hours ago. The tests are all dirt simple now, it's really great.Coming on the heels of the previous chapter on writing small methods and this chapter on comments, I'm extremely proud of this class. It reads well and may not need any comments! <script src="http://pastie.org/1009990.js"></script>Here's an earlier version (and if you can imagine...it was worse before this):<script src="http://pastie.org/1010002.js"></script>For more PPL fun, head over to Miles' blog for his [post on MongoDB](http://mileszs.com/blog/2010/06/17/ppl-30-day-4-mongodb.html).
