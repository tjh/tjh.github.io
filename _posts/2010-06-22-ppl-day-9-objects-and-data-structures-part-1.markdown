---
layout: legacy_post
title: "PPL: Day 9 - Objects and Data Structures Part 1"
wordpress_id: 494
wordpress_url: http://timharvey.net/?p=494
categories: []

tags: []


redirect_from:
- /2010/06/22/ppl-day-9-objects-and-data-structures-part-1/

---
_This is part of the Peer Pressure Learning 30 series. Take a peek at my [introduction to the experiment](/2010/06/11/peer-pressure-learning-experiment/) [Miles](http://mileszs.com/) and I embarked on._This was a tricky section to get through today. I'm long past the comfortable passages that I've read over in the past and into the more conceptual material. I think it will require some more thought and review to really think through properly.## Today's reading: pg 93 - 98

I stopped a bit short, so there isn't as much to cover today, but one clear message came through. Think really carefully about the methods you make public. If you go down the road of opening up the entire class, you dangerously couple classes together. Your like is much more difficult down the road when you need to change a class when you have no idea which methods are in use.Instead, choose the bare minimum to expose and hide as much as possible. That way, you may easily gut and re-implement the entirety of the private methods while preserving the same interface.I find that Rails makes this particularly tough. By default, every model exposes getters and setters for all attributes. That's really great in the world I come from, building simple marketing focused sites with a bit of app thrown in for good measure (to drive a CMS, email form, or simple CRM). When it comes to developing a serious app with tons of models, associated libraries, and complexity galore...it can become quite challenging to keep everything clean and concise. I find that I rarely think in terms of the API a class provides. I can juggle the whole system (barely) in my head, so all classes generally know about whatever I feel like.I was really blown away by this statement (in the context of describing the Law of Demeter), and have no idea whether this would be possible for me:> A method should _not_ invoke methods on objects that are returned by any of the allowed functions. In other words, talk to friends, not to strangers.Wow...how does one do that? The answer (which I don't fully grasp) has to do with the authors distinction between objects and data structures (one being full of behavior, and the latter being just a container for data). It's a pretty wild and interesting concept. I'm fascinated to see how I can apply it in the Ruby on Rails world. Peeking ahead a bit, it seems that some of the answers I need may come later in the chapter.Feeling like all this code structure talk is mamby-pamby? I don't blame you. Head over to Miles blog for his introduction to a language that will put hair on your chest: [Closure](http://mileszs.com/blog/2010/06/21/ppl30-day-8-clojure.html).
