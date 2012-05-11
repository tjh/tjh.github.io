--- 
layout: post
title: "PPL: Day 3 - Function arguments"
wordpress_id: 447
wordpress_url: http://timharvey.net/?p=447
categories: []

tags: []

---
_This is part of the Peer Pressure Learning 30 series. Take a gander at [my introduction to the experiment](http://timharvey.net/2010/06/11/peer-pressure-learning-experiment/)._I didn't make it as far as I planned as the material is pretty meaty in this section and really bears some time to review carefully. Having wrapped up function structure yesterday, this reading focused on function (method for the Rubyists in the crowd) arguments.## Today's reading: pg 40 - pg 47

The general focus was on keeping argument lists short, which can come as a byproduct of having short methods that only do one thing. The author points out that zero or one argument are ideal, two being reasonable, and three or more becoming especially tricky. His point about many arguments making for painful testing was especially weighty given the propensity towards TDD these days.A couple big pointers jumped out at me:- **Bury exception handling in its own method** - This was somewhat strange at first (especially given that much of the Ruby code I've seen happily inlines begin/rescue). But the more I looked at the example, the more sense it made. I may try to do something like this next time I need an exception block.

- **Separate 'asking' and 'doing'** - Since a method should do only one thing, don't allow your methods to answer something and also do something. The text calls this concept, "command query separation".

It amazes me how short all the methods are in the examples. While reading the code does require jumping to various methods to really dig into how everything works. But, the naming is so good and the functions so succinct that often the name is enough to explain what's going on.Sadly, I haven't gotten on the path of looking at 2 code smells each day. Perhaps that will find its way into my daily routine each Friday. Who knows. In just a few days, I've already gained a lot of value reading and going over these concepts. I'd encourage you to spend some time each day learning something new to benefit yourself and your craft!For those of you who are following along at home, take a peek at [Miles' Day 2 post on Riak](http://mileszs.com/blog/2010/06/15/ppl-30-day-2-riak.html)!
