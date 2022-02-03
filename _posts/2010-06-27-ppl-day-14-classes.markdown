---
layout: post
legacy: true
title: "PPL: Day 14 - Classes Part 1"
wordpress_id: 516
wordpress_url: http://timharvey.net/?p=516
categories: []

tags: []


redirect_from:
- /2010/06/27/ppl-day-14-classes/

---
_This is part of the Peer Pressure Learning 30 series. The [introduction to the experiment](/2010/06/11/peer-pressure-learning-experiment/) post will make all things clear._

Whew, I almost forgot tonight! That would have been my first miss. Luckily, after toying with the Facebook API and FQL for a while, it dawned on me that I needed to finish reading the chapter on Classes (which I started this morning) and blog!

## Today's reading: pg 135 - pg 146

Having read a chunk of [Code Complete](http://www.amazon.com/gp/product/0735619670?ie=UTF8&tag=timharvethebl-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0735619670), thinking about clean, concise classes isn't entirely new. I was pleased to find that Uncle Bob isn't fanatical about perfection, sometimes bending the rules on privacy:

> For us, tests rule. If a test in the same package needs to call a function or access a variable, we'll make it protected...

Nice, that had been bothering me for a month or two. It seems that my larger classes end up with a private method or two that I'd like to test. They're tested by virtue of the public methods being tested, but a targeted test would help at times. I didn't like the idea of making them public, so this strikes a nice balance.

As with functions, the author makes it clean that they should be small, and then you should go back and make them smaller still. But...he makes a great distinction: "with functions we measured size by counting physical lines. With classes we use a different measure. We count _responsibilities_". Oh man, genius!

## Fighting with Rails

I'm clearly still new to Rails and find that the conventions seem to fight against the larger OOP concepts at times. I'm sure that as I get more comfortable with the plumbing (and hell, Ruby itself) that I'll find all this easier. I read the following a struggle to know how to make such nice-sounding organization a reality in a world of "fat models":

> At the same time, many developers fear that a large number of small, single-purpose classes makes it more difficult to understand the bigger picture. They are concerned that they must navigate from class to class in order to figure out how a larger piece of work gets accomplished.

> However, a system with many small classes has no more moving parts that a system with a few large classes. There is just as much to learn in the system with a few large classes. So the question is: Do you want your tools organized into toolboxes with many small drawers each containing well-defined and well-labeled components? Or do you want a few drawers you toss everything into?

It's crazy stuff. While I like the idea of small drawers, I suspect that I would end up creating a ton of tiny drawers that don't have the requisite organization. Time will tell!
