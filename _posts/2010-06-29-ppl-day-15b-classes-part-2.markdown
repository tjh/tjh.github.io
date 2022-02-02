---
layout: legacy_post
title: "PPL: Day 15b - Classes Part 2"
wordpress_id: 529
wordpress_url: http://timharvey.net/?p=529
categories: []

tags: []

redirects:
- /2010/06/29/ppl-day-15b-classes-part-2/


redirect_from:
- /2010/06/29/ppl-day-15b-classes-part-2/

---
_This is part of the Peer Pressure Learning 30 series. Jump to [my introduction to the experiment](http://timharvey.net/2010/06/11/peer-pressure-learning-experiment/) if you haven't been following along._

Ok, it's a day late, but I'm back on the wagon. It's really day 16, but I'll get back to that in a few moments. I need to play catch up first!

I have to make a brief digression. This Peer Pressure Learning has impacted a number of areas in my life. I've found that as I've been more focused and disciplined, other priorities have felt more effortless.

I've ridden my bike or walked to work almost two weeks now (with one or two breaks). That has paid off big-time for my soccer league. I've been a lot more effective on defense and logged my first assist today to bring us back from a 1-2 deficit. Geek fitness for the win! Ok, enough of that, back to the code!

I lucked out with today's reading. The balance of the Classes chapter wasn't particularly long. But, it was home to some great material about organizing your classes with an eye towards future change. It's been said a thousand ways...and I'll repeat it again here: the only thing in software you can be certain of is that you'll have to change tomorrow what you wrote today.

## Today's reading: pg 147 - pg 152

I glossed over the Single Responsibility Principle of class design from the first portion of the text, but it was impossible to miss here. The idea is that a class with more than two responsibilities is a broken design. A couple ways to tell that one has broken the SRP (my paraphrasing from memory):

- Describing the class in plain english includes words like "and", "or", "if", or "unless"
- Finding private methods that only support a few of the public methods or private variables used by a small portion of the methods
- More than one type of application change will impact the class (meaning it's probably doing more than one thing (see the first bullet)

It's pretty genius. It leads to mountains of tiny classes. Coding this way must be a complete mind shift. One couldn't do this haphazardly or you'd go crazy. Lots of tiny, but complex classes would be awful. You really would have to get darn good at simplification and organization. Thank goodness for tests, you'd have no way to complete a refactor otherwise!

A throw-in at the end talked about one of my favorite concepts (I like it, but probably am not that great at it): Separate stuff that appears likely to change from stuff that will stay constant. Don't put them in the same class!

Why do you think we have configuration files full of application constants and don't put that stuff into our classes? It's partly to eliminate duplication, but just as importantly, it's so our system can evolve through editing as few files as possible.

One of my other favorite testing methods was talked about as well. When you have to interface with some external class (one that's perhaps complicated or an API), pass in the class as part of the initialization or using a setter method. That way, your tests can push in a mock object for easier validation. It also allows you to decouple your code from an external or volatile library. Nice!

Next up, Chapter 11: Systems (I have no idea what the chapter is about, but it sounds cool).

While I've been slacking, Miles has been tearing it up!

- Day 14: [HTML5](http://mileszs.com/blog/2010/06/27/ppl30-day-14-html5.html)
- Day 15: [Python](http://mileszs.com/blog/2010/06/28/ppl30-day-15-python.html)
