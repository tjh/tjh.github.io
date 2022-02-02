---
layout: post
legacy: true
title: "PPL: Day 12 - Boundaries"
wordpress_id: 509
wordpress_url: http://timharvey.net/?p=509
categories: []

tags: []


redirect_from:
- /2010/06/25/ppl-day-12-boundaries/

---
_This is part of the Peer Pressure Learning 30 series. The [introduction to the experiment](/2010/06/11/peer-pressure-learning-experiment/) post will make all things clear._

Today's already been a fun day. Vince, my partner in crime at the office, and I got up early and started banging out a free web site for our building's cafe. It's a great little restaurant on the seventh floor that needs some help with a bit of marketing. Look for http://ErvsCafe.com/ soon.

I also had a blast this morning reading about software boundaries. It's a pretty important topic when you begin considering larger systems.

## Today's reading: pg 113 - pg 120

The general idea is that we need to manage how our code interacts with software written by someone else, or that might change frequently. It's really another look at coupling. Rather than sprinkling code all through our app that uses a particular gem, we're encouraged to write a wrapper class so that it's less disruptive (sorry [Jerry](http://disruptiveventures.com/)). That way, we can swap out an uploader / asset gem with something else and don't have to rewrite large swaths of the application's code. This comment about such classes sums it up best:> It is able to evolve with very little impact on the rest of the applicationThere's a wonderful gem in this chapter. The section on exploring and learning boundaries offers some excellent advice on getting used to and beginning to integrate a new library. One of my big takeaways was the authors encouragement to write tests that exercise the new library. It forces you to begin learning the library's API and documents your understanding. It also acts as a safety net when the library updates. You'll know immediately if some portion of the API you are familiar with changes. These are the kind of test, in my world, that I'd leave for the CI server to run once they're in place. There's no sense in running them regularly unless you're working with changing out that library.Looking for some more PPL goodness? Take a peek at Miles' [Day 10 post on Erlang](http://mileszs.com/blog/2010/06/23/ppl30-day-10-erlang.html)!
