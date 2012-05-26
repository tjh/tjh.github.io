--- 
layout: post
title: "PPL: Day 13 - Unit Tests"
wordpress_id: 511
wordpress_url: http://timharvey.net/?p=511
categories: []

tags: []


redirection:
- /2010/06/26/ppl-day-13-unit-tests/

---
_This is part of the Peer Pressure Learning 30 series. Get a handle on this PPL thing with my [introduction to the experiment](http://timharvey.net/2010/06/11/peer-pressure-learning-experiment/)._

It's the weekend, so I'm back to the evening groove. The morning was relaxed and the whole family and I went to visit the Amish farm that we buy all our meat, eggs, and chicken from. But that's another blog post.Today's posts is on unit tests. I'm trying not to be a snob as the Ruby community seems to really have testing nailed. Between Rspec and Cucumber, I'm in heaven. I have to remind myself that there's a lot to learn from the Java community and especially about writing good tests.

## Today's reading: pg 121 - pg 134

Uncle Bob seems to nail me with every chapter. I have been, for the most part, a self-taught programmer. The programming courses I took in college were a joke that I dominated in my sleep, so I jumped over to a business degree so I could learn something I didn't know. But therein lies the problem. Until now, I've never had a systematic approach to polishing my craft. This line from the text describes me to a T:> ...in the mad rush to add testing to our discipline, many programmers have missed some of the more subtle, and important, points of writing good tests.Some really good points come out of the chapter:

- Test code should match the code quality of production code - I can relate here...test code changes all the time as the requirements change. If your tests are crap, you'll pay for it every time you have to rewrite tests. Changing over to using Factories has been a perfect example. The tests stay DRY and have been much easier to maintain since the change. Uncle Bob (the author) correctly says: "Test code is just as important as production code."

- Tests give you courage - That's a weird thing to say, and it's definitely my interpretation of the text. But...it really is true. I have tremendous faith in the test suites I use in each of my apps. Because of the safety net they provide, I can rename large models, change big chunks of logic, or refactor sections of tricky code without fear. My tests tell me when I'm done! I couldn't go back to a non-TDD (test driven development) language ever again (or one with sucky TDD tools). I really mean that. I'd be hard as hell.

- One assert per test...probably - I like that Uncle Bob feels free to break the rules. While it's a good goal to shoot for one assert per test, the added code and duplication may negate the benefit. I find that I frequently pair a record count assert with an assertion about what's in the record. The better guideline is to test one behavior (the text says, "concept") per test.

All in all, I feel pretty good about where I stand with test code. I definitely need to hone my comfort level with the tools I use, particularly to reduce duplication.I'm totally pumped about tomorrows reading which begins a journey into the depths of classes and their proper composition. If you're ready to melt your brain on some wild code stuff, read Miles' [post on Factor](http://mileszs.com/blog/2010/06/25/ppl30-day-12-factor.html), a crazy weird stack language that's unlike anything you've even seen.
