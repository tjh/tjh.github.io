--- 
layout: post
title: "PPL: Day 7 - Vertical formatting"
wordpress_id: 482
wordpress_url: http://timharvey.net/?p=482
categories: []

tags: []


redirection:
- /2010/06/20/ppl-day-7-vertical-formatting/

---
_This is part of the Peer Pressure Learning 30 series. The [introduction to the experiment](http://timharvey.net/2010/06/11/peer-pressure-learning-experiment/) post will make all things clear._Once again, the weekend has almost been my undoing. I may have to accept that the weekend requires doing PPL at night before bed with weekdays sticking to the morning routine.## Today's reading: pg 75 - pg 84

Chapter 5 kicks off discussions of code formatting, a topic I really enjoy. I'm a complete freak for making sure my hashrockets line up, there's no whitespace at the end of a line of code, etc. I'd like to say that it's because I have some specific value on professionalism or neatness, but that would be a load of crap. For whatever reason, I spot little inconsistencies and they drive me nuts...it's probably a bit OCD because I'm sure that I blindly skip over the stupid stuff I do that others hate. Clean Code has kept the discussion rather focused on the utilitarian side. [Steve Smith](http://twitter.com/orderedlist)'s talk at the [Great Lakes Ruby Bash](http://greatlakesrubybash.com/) on "[Designing Code](http://www.slideshare.net/orderedlist/designing-code)" takes the whole concept in a direction I love.<div style="width:425px" id="__ss_3758673">**[Designing code](http://www.slideshare.net/orderedlist/designing-code "Designing code")**<object id="__sse3758673" width="425" height="355"><param name="movie" value="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=designingcode-100417085231-phpapp01&stripped_title=designing-code" /><param name="allowFullScreen" value="true" /><param name="allowScriptAccess" value="always" /><embed name="__sse3758673" src="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=designingcode-100417085231-phpapp01&stripped_title=designing-code" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="355"></embed></object><div style="padding:5px 0 12px">View more [presentations](http://www.slideshare.net/) from [Steve Smith](http://www.slideshare.net/orderedlist).</div></div>The author gave some great suggestions about how to sort the methods within a class. I've always wondered about that as mine end up being a mish-mash, depending on when I added a method. He suggests that:

- Methods are defined below the point where they're first called

- Like methods go together (they are logically or actually connected)

He also spends some time talking about proper whitespace, limiting files to a reasonable length (files over 500 lines may indicate a concept that's too large for a single class), and keeping in mind that you're in the business of communicating. I love this introduction to the chapter:> Code formatting is about communication, and communication is the professional developer's first order of business. Perhaps you thought that "getting it working" was the first order of business for a professional developer. I hope by now, however, that this book has disabused you of that idea. The functionality that you create today has a good chance of changing in the next release, but the readability of your code will have a profound effect on all the changes that will ever be made. The coding style and readability set precedents that continue long after the original code has bee changed beyond recognition.Good stuff.
