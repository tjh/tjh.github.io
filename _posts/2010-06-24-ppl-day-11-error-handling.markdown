--- 
layout: post
title: "PPL: Day 11 - Error handling"
wordpress_id: 505
wordpress_url: http://timharvey.net/?p=505
categories: []

tags: []


redirect_from:
- /2010/06/24/ppl-day-11-error-handling/

---
_This is part of the Peer Pressure Learning 30 series. Read my [my introduction to the experiment](http://timharvey.net/2010/06/11/peer-pressure-learning-experiment/) to learn more._

After two days on Objects and Data Structures, I felt like I was beginning to get a better handle on the concepts. I'm pumped about today's topic as I've just been pondering how to handle bad inputs (to libraries) and thinking about alerting (to me) of recoverable error conditions.## Today's reading: pg 103 - pg 112

This statement kicks off the chapter on the right foot for me, setting the stage:> Error handling is important, but if it obscures the logic, it's wrong.Nice. Definitely not playing around on this topic! This was particularly valuable as the discussion turned to null values in arguments and return values.Two critical sections were particularly timely for me, titled "Don't return null" and "Don't pass null". I had really been struggling with this and as a result, been adding .nil? checks all over my code. I just had a conversation about it yesterday and was at a loss about what to do.Now, it's funny because I failed to take several things into account:

- Rails already has some great error handling, so if a null creeps in somewhere, the user gets a nice error message and Hoptoad helpfully kicks me in the mouth with a nice shiny stack trace.

- While it's definitely worth coding defensively, my code is the only code that calls the methods I'm worried about, so I can trap for bad user input long before it gets into the libraries.

- Throwing exceptions is not a bad practice. I read a blog post talking about bad usage of exceptions to control program flow and have since stayed away from them. Dumb. In several cases, I'd been returning nil as a flag that something had gone wrong and allowed the caller to deal with it. That's pretty lame. Thinking now, I realize that I could define some sensible exceptions and allow the caller to handle each differently depending on the situation.

Chances are good that most of my .nil? checks are pointless and only satisfy test cases that I created in rspec. Boo. Time to rip some stuff out because as they say, "No code is better than no code."So...all that to say, there's some tremendous wisdom in what author Uncle Bob shares. He sums it up nicely by saying:> If you are tempted to return null from a method, consider throwing an exception or returning a special case object instead._* Note: A special case object would be one that looks and acts like the typically returned object. For example, Rails ActiveRecord #all method typically returns an enumerated list of model instances. When no records exist, it returns an empty array instead of nil. That plays nicely with a .each loop, saving us from trapping for nil._
