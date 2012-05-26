--- 
layout: post
title: "PPL: Day 20 - Successive Refinement Part 2"
wordpress_id: 574
wordpress_url: http://timharvey.net/?p=574
categories: []

tags: []

redirects:
- /2010/07/03/ppl-day-20-successive-refinement-part-2/


redirection:
- /2010/07/03/ppl-day-20-successive-refinement-part-2/

---
_This is part of the Peer Pressure Learning 30 series. Go read my [introduction to the experiment](http://timharvey.net/2010/06/11/peer-pressure-learning-experiment/) that [Miles](http://mileszs.com/) and I embarked on._

Since this is a pretty meaty chapter, I want to take my time and really internalize the lessons here. Just like a University's capstone course, these case study chapters should apply all the lessons that came before and help me see how it all comes together.

As such, I'm converting the example code into the Ruby equivalent. That will both make it familiar and push me to think through why I would make the various refinements. It's also great to do some pure Ruby. I do so much that's Rails specific that I like the opportunity to get back the the core language.

## Today's Reading: Reread pg 177 - pg 186

I skimmed ahead a bit since I covered the same material from yesterday. I realized that I was converting the nice, clean copy of the argument parser and probably shouldn't. The text goes back in time to an earlier copy that's pretty rough, then proceeds to show how it evolved. Oops. (I thought we would be taking the nice one...mucking it up with some hacky fixes, then cleaning it up)

So I'm taking a step backwards to code up the "bad" version in Ruby and will follow along with the improvements. Unless the tests are in the chapter (which I don't think I saw), I'll probably see about throwing in some rSpec as I go to fully TDD the whole thing.

Out of deference to the author and all the work he did on these examples, I won't be sharing the Git repo. However, I'll look for some chunks of code that I could post to illustrate interesting points.

## What's next

Always one to get going on the next thing...I'm already thinking about what I'll do next month. The ideas I like best involve either creating an app from scratch and applying Clean Code principles, or perhaps cleaning up my Twitter Filter or Am I Down.

I may not be brave enough to commit to a full 30 days, but perhaps I can keep up the pace. Ideally, I would spend 30-60 minutes each day and post the repo and selected improvements as I go. My latest thinking is that I would implement Am I Down in Rails 3 with Reddis and maybe Mongo.
