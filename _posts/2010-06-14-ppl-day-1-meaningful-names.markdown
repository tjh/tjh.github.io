---
layout: post
legacy: true
title: "PPL: Day 1 - Meaningful names"
wordpress_id: 410
wordpress_url: http://timharvey.net/?p=410
categories: []

tags: []


redirect_from:
- /2010/06/14/ppl-day-1-meaningful-names/

---
_This is part of the Peer Pressure Learning 30 series. Take a gander at [my introduction to the experiment](/2010/06/11/peer-pressure-learning-experiment/)._

In the next 30 days, I'll be reading [Clean Code](http://www.amazon.com/gp/product/0132350882?ie=UTF8&tag=timharvethebl-20&linkCode=as2&camp=1789&creative=390957&creativeASIN=0132350882) pg 17 to 284 (Chapter 2 - Chapter 16) as a part of our [Peer Pressure Learning Experiment](/2010/06/11/peer-pressure-learning-experiment/). That equates to about 9 pages each day.

## Today's reading: pg 17 - pg 30

Chapter 2 was just over the 9 pages planned and had a large code example, so I pressed through to finish the chapter. While I've read it several times (as I've tried to go through Code Complete in the last couple years), the importance of good naming may hold me to this chapter tomorrow as well for some further review. Key highlights include:

- **A good name should reveal intent** - A variable name like "days" is fine if only one thing in the function or class relates to days and the context makes it clear what the meaning is. Once there are more concepts, then you must expand the name to something like "elapsedTimeInDays" or "daysSinceLastClass".
- **Allow context to provide information** - I struggle with balancing the context around a variable or function, frequently putting too much context into the variable name (making them rather long) when the code around it provides sufficient context. I'm quick to name a variable "customerAddress" when in the Customer class.
- **The length of a name should correspond to the size of its scope** - This was a really helpful distinction for me. I often use really long names, hoping to make the intent and meaning of everything really clear. Unfortunately, as my coworkers remind me, the long names can cloud the code and confuse things with too much information. Some of my issue is that I know too much about how a class/function will be used and code in that knowledge, breaking encapsulation and increasing coupling. Thankfully, TDD helps with this, but it's still something I need to work on.
- **Avoid mental mapping** - This point made a ton of sense to me. Don't make the person reading your code translate (map) one thing into something else. Single letter variable names are a great example of this. Even if you're in an address function, it doesn't make sense to use "a" for the address variable name. Your reader will constantly map "a" into "address" in their mind, increasing the juggling they have to do. I can see using single letter variable names in only in a few situations: 1) While using "i" for a loop index 2) A one-line block argument 3) Perhaps using "f" within a the form_for block of a view helper. That last one is still somewhat malodorous to me as the files are typically longer than a function and you have to map "f" to "form". However, it's used rather often and as it's familiarity increases, the mental juggling declines.

Check out [gist 2794746](https://gist.github.com/2794746)

Yep, if you didn't already know, I'm a currently a Ruby guy. So, you'll have to bear with me as all my examples will probably be Ruby code. And, I may not test all of it. The code above probably will execute, but I didn't try it. You can be my tech editor. If you see an error, let me know and I'll fix it.

## Exercises

To make sure I really learn this stuff, I'll endeavor to post some code changes I make as a result of what I've read.

UPDATE: I got a bit too rowdy posting source code from a private project, so I pulled the exercise code. Definitely my bad. I may come back and do another exercise to post from one of my public repositories. More than likely, I'll forget tomorrow. :) Hopefully, the code samples moving forward will be enough to satisfy your desire to learn with me!
