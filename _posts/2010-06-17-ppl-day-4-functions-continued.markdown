---
layout: legacy_post
title: "PPL: Day 4 - Functions continued"
wordpress_id: 453
wordpress_url: http://timharvey.net/?p=453
categories: []

tags: []


redirect_from:
- /2010/06/17/ppl-day-4-functions-continued/

---
_This is part of the Peer Pressure Learning 30 series. Take a gander at [my introduction to the experiment](/2010/06/11/peer-pressure-learning-experiment/)._Thanks to [Miles'](http://mileszs.com/) [example](http://mileszs.com/blog/2010/06/16/ppl-30-day-3-cassandra.html), I've included the above note on each of my posts, just in case you have no idea what all this PPL nonsense is about. On to today's work...Functions (method) represent the core to almost everything we do, so I spent some extra time in this chapter. The last few pages were pretty light and included a rather long code sample. It was striking just how small each of the methods in the example class were, with most being only one or two lines. The amazing thing was, while the class only had two public methods, there were probably 20 private methods. You'd think that would be a PITA to work through and dig around...but everything was so simplistic that even though it was Java code, I could read and understand it easily. The "pre-refactor" example code was around 45 lines, but was really tough to grok. Despite doubling the amount of code, it was a drastic improvement.## Today's reading: pg 47 - pg 52

This daily rhythm of reading and looking over some code already begins to feel like a habit. I know I've said this a ton already. I'd *really* encourage you to consider some type of similar habit. Do something each day, even if it's just 10-15 minutes. Make it consistent and do it all week long. Certainly, my test will come on Saturday and Sunday while at home. The kids will probably be up early and going crazy around me. But what better thing for them to see than their father taking his craft seriously enough to spend a few minutes on the weekend.  There wasn't much text at the end of this chapter, but several key concepts still hit home:- **When you think methods are too small, shrink them a bit more** - It was pretty amazing the effect of having 2-3 methods in the code sample. The whole thing read extremely well, and because everything within a method was at one level of abstraction, you got to choose how far down the rabbit hole you wanted to go. I could have read the first public method and understood what the whole class did. Reading two layers further uncovered more detail. I suppose it helps that I'm a hierarchical thinker, so the breakdown essentially helped show me the structure.

- **Break things down!** - By making everything into smaller and smaller pieces, simplicity follows. Don't be afraid to break out more classes and methods!

I started tinkering with a toy project, "Should I STFU?" It will analyze a user's recent tweets and give each one an arbitrary annoyance score, letting them know, on the whole, whether they need to STFU. It's totally a gag and something fun to work on. I [posted the source code](http://github.com/tjh/should-i-stfu) so you're welcome to submit pull requests with fun new point values (once it's ready)!
