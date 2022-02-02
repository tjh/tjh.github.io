---
layout: legacy_post
title: "PPL: Day 8 - Horizontal formatting"
wordpress_id: 490
wordpress_url: http://timharvey.net/?p=490
categories: []

tags: []


redirect_from:
- /2010/06/21/ppl-day-8-horizontal-formatting/

---

_This is part of the Peer Pressure Learning 30 series. Go read my [introduction to the experiment](/2010/06/11/peer-pressure-learning-experiment/) [Miles](http://mileszs.com/) and I embarked on._Monday morning and I'm back on track. It's barely 8:00am and I have my reading done.## Today's reading: pg 85 - pg 92

This section on horizontal formatting really challenged some of my thoughts on code. As I said before, I'm a bit of a geek for formatting code a certain way. Uncle Bob (the author) isn't as infatuated with the little "beauty" details as I sometimes am. I routinely line up assignment operators, hashrockets, or any other element that's repeated on multiple lines. He points out some reasons not to do that, despite the visual appeal.An example of my hyperactive horizontal alignment from the [filtering Twitter Proxy](http://twitter-proxy-production.heroku.com/) I wrote:<script src="http://pastie.org/1013462.js"></script>A couple differences in his coding style that I want to ponder further:- You probably shouldn't break indentation - When a block can be done on one line or indented over several, the author explains that he almost always (he of course, used Java) went back to the indented multi-line version. In the example below. the "return true" is the critical element, the thing that actually executes. That shouldn't be hidden in the middle of the line. Rather, it's indented and it's scope is clearly shown. (Note: I did use the more Ruby-ish inline if statement. I felt that to be a reasonable breakage of standard indenting...but maybe it isn't!)

<script src="http://pastie.org/1013463.js"></script>      - Don't necessarily line up similar elements - I find that I almost always line up like elements in named_scopes, routes, associations, etc. The author makes an interesting point that while you may be making the code more aesthetically pleasing, you can obscure relevant differences. The code becomes too easy to scan, allowing someone to miss critical elements of the code. The example below may be as stretch, but I could see someone missing the difference between the TRUE and FALSE. I guess one must weigh the value of showing how similar the two statements are with making their difference clear.

<script src="http://pastie.org/1013469.js"></script>I'm interested to talk with my team about implementing some basic style guidelines. The text talks about a situation the author was in where they spend just 10 minutes making some decisions that affected the whole project. That tells me that it doesn't have to be a long, drawn out affair. What will get interesting for a web app project is that we have to integrate several different languages. I'm already finding that I have to tone down the amount of Ruby-specific stuff as we have to shift from Ruby to JS to HTML and each has its own common idioms. That's what makes this fun!
