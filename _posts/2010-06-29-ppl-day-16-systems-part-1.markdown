---
layout: post
legacy: true
title: "PPL: Day 16 - Systems Part 1"
wordpress_id: 533
wordpress_url: http://timharvey.net/?p=533
categories: []

tags: []

redirect_from:
- /2010/06/29/ppl-day-16-systems-part-1/

---
_This is part of the Peer Pressure Learning 30 series. Take a gander at [my introduction to the experiment](/2010/06/11/peer-pressure-learning-experiment/)._

Ok, I'm back on track with two blog posts today. My [Day 15b - Classes Part 2 post](/2010/06/29/ppl-day-15b-classes-part-2/) fills in the gap left by my [Day 15- FAIL](/2010/06/28/ppl-day-15-fail/).

I started into the rather heavy chapter on systems. It's a higher level look at clean code from the architecture and strategy perspective. A ton of it was either over my head (and heavy into Java) or was tough to apply with my Ruby on Rails goggles on.

## Today's reading: pg 153 - 163

Wow, this was some intense stuff. Uncle Bob talked about some interesting pitfalls with coupling the instantiation and management of dependencies in with the business logic. I could see a lot of validity to the problems that causes as you get into larger and large codebases. The pain of changing out your [ORM](http://en.wikipedia.org/wiki/Object-relational_mapping) already leads me to believe that Ruby on Rails projects likely suffer from some of the problems he talks about.

He shared some interesting examples of how to decouple the initialization of your objects from the run-time code, but I couldn't even begin to understand how that would relate to a Rails app.

I have to take a cue from Miles to make any sense of this blog post:

## What I Think I Now Know

Think, think, think before you go charging down a path with your classes. The author showed an example of the ubiquitous lazy-loading method of instantiating objects that I've used numerous times. In addition to pointing out that it may be a pre-mature optimization, he also explains that it can tie the instantiation too closely with your business logic. What does one do about that? I have no idea.

Realize that your toolkit or framework may fight against what you're trying to accomplish. While I don't know what you'd do about it, we have to realize that any framework we use was designed with a purpose or set of goals. Those may be different that we we need to accomplish with the current work at hand. I'm not suggesting that we throw out frameworks, merely that we understand their strengths and weaknesses. And at the same time, we learn to see clearly when it's time to buck the convention or stick to it.

Finally, one must accept that you can't architect any system for the needs you'll have in 12-24 months. It's just not going to work out exactly the way you expect. As believers in Agile, we need to accept change and do what supports today's requirements with basic consideration for the future. We need to be wary of over-engineering.
