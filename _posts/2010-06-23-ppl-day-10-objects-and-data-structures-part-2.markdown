--- 
layout: post
title: "PPL: Day 10 - Objects & Data Structures Part 2"
wordpress_id: 499
wordpress_url: http://timharvey.net/?p=499
categories: []

tags: []


redirect_from:
- /2010/06/23/ppl-day-10-objects-and-data-structures-part-2/

---
_This is part of the Peer Pressure Learning 30 series. You can [read all about it](http://timharvey.net/2010/06/11/peer-pressure-learning-experiment/)._

Yesterday's late morning led to a last-minute blog post. Thankfully, I read the text earlier in the day as it really warranted some consideration. Thankfully today, I'm back to the early groove.

## Today's reading: pg 99 - pg 102

The chapter's concepts begin to take shape with the balance of the chapter read. While it's really tough to see how it fits in with the rather opinionated Rails framework. I'd be rather interested in talking through concepts in this chapter as they relate to MVC.The crux of the matter is the distinction between data structures (dumb classes that hold data) and objects (super-smart classes that operate on data structures). I quoted from the text yesterday, but really should have used this rewording of the Law of Demeter (a "well known heuristic"):> a module should not know about the inards of the objects in manipulatesThat talks about objects, not data structures. The idea is that objects know **very** little about other objects in the system. They are allowed to chain through and know a **ton** about data structures, even if they're chained several layers deep.## Ruby on Rails

So, what about Ruby on Rails? Clearly, the whole discussion is moot when you're looking at a site/system with less than 5,000 lines of real code. It's probably not large enough to worry about splitting into separate objects and data structures. Rails' models hide enough functionality that a model can stay reasonably sized and satisfy the needs of a hybrid object / data structure. It's a concern of balance, really. While a purist may demand that the smallest app utilize all the associated patterns and follow OOP to the T, I'm not in that camp. I've done enough consulting to realize that you have to balance cost (time) with the benefits (rather low in small projects).A larger app begins to make the whole discussion rather interesting. I seriously have no answers on this side of the topic. If I'm taking the text properly, one would begin to make the models increasingly small, leaving validations and associations behind (and probably some of the callbacks). You'd then move more and more logic into library objects.How the heck would that work? Hmm...I'm not really sure. I've done some work on having the model call a factory that instantiates the associated libraries, but I could also see some of that logic going into the controller. Putting it into the controller seems to be a great opportunity to duplicate code (not good). I think I like the idea of the model starting the process.I'd love to hear from anyone with experience on really large, complex Rails projects. Talking through the concepts with someone experienced with 20-50k lines.
