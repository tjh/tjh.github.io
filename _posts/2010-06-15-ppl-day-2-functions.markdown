---
layout: post
legacy: true
title: "PPL: Day 2 - Functions"
wordpress_id: 429
wordpress_url: http://timharvey.net/?p=429
categories: []

tags: []


redirect_from:
- /2010/06/15/ppl-day-2-functions/

---
_This is part of the Peer Pressure Learning 30 series. Take a gander at [my introduction to the experiment](/2010/06/11/peer-pressure-learning-experiment/)._Today began with the first portion of Chapter 3: Functions from [Clean Code](http://www.amazon.com/gp/product/0132350882?ie=UTF8&tag=timharvethebl-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0132350882). I stopped just before getting into function arguments.## Today's reading: pg 31 - pg 40

The first section followed a consistent theme, pounding away at making your functions short, focused, and one-dimensional. My key takeaways were:- **Keep 'em REALLY short** - This usually isn't much of a problem for me, right up until it is. At times, I get lazy (usually when not doing TDD) and let a function get out of hand. It's crazy, as a longer function is a pain in the ass to test, and confuses the hell out of your future self. While the authors don't give a hard and fast rule (which would be stupid), it appears that anything over 5-10 lines is likely a code smell.

- **Do only one thing** - Again, I feel like I generally do well with this, perhaps erring on the side of creating too many functions. I'm consistently challenged for creating too many rabbit-holes to dig through. I need to really keep any eye on this and put in the rabbit-holes where needed.

- **Only one level of abstraction per function** - I'm really excited about this one. While I've read Clean Code several times, this hasn't sunk in until now. The idea is not to do string manipulation in the same function that's doing SQL calls and building an HTML template string. It's a somewhat nebulous concept for me to explain, but the book did a good job. I think it's something you'll recognize when you see it.

Tomorrow, more functions! It goes into argument counts and structure. Woot!UPDATE: I got a bit too rowdy posting source code from a private project, so I pulled the exercise code. Definitely my bad. I may come back and do another exercise to post from one of my public repositories. More than likely, I'll forget tomorrow. :)
