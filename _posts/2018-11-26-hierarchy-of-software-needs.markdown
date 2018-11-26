---
layout: post
title: Hierarchy of Software Needs

---

# Introduction

(There’s a [summary at the end](#tldr) if you’re in a hurry)

In the 40’s and 50’s, Abraham Maslow [introduced a psychology theory](https://en.wikipedia.org/wiki/Maslow%27s_hierarchy_of_needs) that, roughly summarized, explained that before meeting higher level needs, a person must first meet those at lower levels. He pointed out how pointless it would be to worry about one’s self-esteem before ensuring you have food and shelter. Similarly, there’s a hierarchy of “software needs” that we ignore to our peril. While many of these concepts will apply to any software system, I've focused the solutions and suggestions to web applications.

Just as a human seeks “success” (or at least continued existence), software also has aspirations: to prove its usefulness by solving problems, delighting users, and exhibiting beauty (in its appearance, usability, and implementation).

What needs does a deployed application have? In what ways does prioritizing these needs badly lead to poor outcomes? How could an awareness of this hierarchy help us understand why some applications are more successful than others?

<img src="/images/2018-11-hierarchy.png" alt="software hierarchy diagram" width="350" title="Pyramid showing needs"/>

For software to be useful, we must please users (by building features and answering their questions or requests for help). And while that’s the most important thing, it must come after the other elements in the hierarchy are in place. Like childhood (in a healthy family environment, one doesn’t have to worry about physiological needs, safety, or love), a software project’s early days are filled with pleasing users! There are no production alerts, no support load to worry about, nor much code/infra/process to improve! It’s like heaven. **As a project launches and begins to mature, the contexnt changes. It’s easy to forget that our approach and priorities must also shift**.

# Symptoms

If you’ve seen more than a few of the following, there’s a good chance your team or application’s priorities are out of order. And the longer they stay that way, the worse the symptoms will get:

* Team members create filters that automatically “mark read” and “archive” alerts.
* On-call staff complain about being woke up in the middle of the night for no reason, or begin sleeping through pages without consequence.
* Handling support requests is purely reactionary, without retrospectives or proactive efforts to address frequently reported issues.
* Engineers working on the application are siloed from those handling support, with little coordination or communication between them.
* Team members are so busy doing whatever users want/need that there’s no time to address technical debt, automate busywork, fix bugs, or streamline wasteful processes.
* The same support requests seem to keep coming up. Users may even become accustomed to not using the application to accomplish certain error-prone or fragile tasks and proactively ask support instead.

# Restoring Sanity

By looking at each element in the hierarchy, I hope to make it clear why they should be tackled and prioritized in this order...counterintuitively putting “please users” last. That doesn’t mean that giving users what they need is the least important...rather the path to ensuring the application (and by extension its users) is successful requires putting our work in a different order.

Does that mean you shouldn’t please users until you’ve fixed all the alerts, software issues, and technical debt? No! The focus is on ensuring that the first three areas have a healthy focus and investment alongside the need to please users. A team may only need 30 minutes of continuous improvement each week to stay ahead of issues and make progress on making their space easier to manage. Others may dedicate multiple developers full time to the effort. Context is key, so finding the right balance will yield the best results. This post is intended to highlight the value in putting the “right” amount of time to alerts, reducing support, and improvement while avoiding the temptation to firefight by only addressing user requests.

There’s often a fear that this approach is slower or requires more resources. My experience proves the opposite: **Skipping the necessary investments in addressing alerts, reducing support, and continuous improvement results in massive waste**. A healthy development hierarchy operates efficiently and produces happier developers and delighted users.

What does each element in the hierarchy involve and how do we give it appropriate attention?

# Address Alerts

At their best, alerts help you identify and remedy issues before they impact your users, trigger support requests, become large-scale outages, or cause additional damage. At their worst, alerts drain a team with distractions, needless fire drills, and hide real issues under a mountain of false-positives.

Any automated notification should be considered an alert. They typically show up as emails, SMS, PagerDuty, or Slack messages. Before looking at what should or should not be an alert, first consider how alerts evolve.

When an app first gets off the ground, there aren’t any! By their very nature of being generated by a system, you generally need to explicitly create alerts. The programming framework or deployment platform may come preconfigured to send certain alerts, giving you a start (but often not particularly useful). For an experienced engineering team, alerts are generally created/updated/dropped during the course of “Reducing Support” or “Continuous Improvement.

There are few things worse than useless alerts (you know the type: those emails filling your inbox that you routinely ignore, or that late night page that you can’t do anything about). To be useful and avoid needless waste, you must ruthlessly ensure they are:

* Actionable
* Urgent
* Targetted

Most importantly, every alert must have a clear course of action. If there’s nothing specific to be done with an alert, why bother with it? And to be worthy of an alert that interrupts your team, be sure they’re urgent...requiring timely action (to avoid user or engineer irritation). Finally, be wary of the temptation to send the alert to as many team members as possible (hoping that someone will handle it). Work to cut down the distribution of alerts so that they interrupt the smallest group possible, perhaps leveraging escalations when something goes without action or acknowledgement for a certain time. From a practical standpoint, this could be an “on call” or “alerts” distribution group that members join/depart as needed (when they go on call or should be involved with addressing alerts) or turn on/off their mail filtering rules.

With a clear definition of what an alert should be, what specifically does investing in “addressing alerts” involve? At the very least, it should include:

* Take immediate action to remedy any urgent, actionable alerts
* For alerts that are non-urgent or cannot be actioned, common remedies are:
  * Intermittent issues: look to implement automatic retries
  * Non-urgent issues: switch to logging the occurrence, optionally sending a periodic report of occurrences that can be addressed as time allows (continuous improvement)
* Delete any alerts you’re sure will never be relevant/useful
* Consider relaxing the alert threshold if it seems that usage patterns have changed sufficiently (generally for things like CPU load, memory usage, network usage). Warning: being too quick to relax a threshold can result in missing a potential issue.

Having a consistent practice of addressing alerts will slowly reduce the frequency and impact of useless interruptions, while still maintaining a watchful eye on the stability and proper function of the application.

But wait! I can hear you thinking, “We didn’t talk about creating alerts!” That’s very intentional. We never want to create alerts for their own sake. Rather, they are a byproduct of work to “reduce support” and “continuously improve”.

# Reduce Support

Like alerts, support requests represent incoming interruptions to an application team that take away from resources that could be applied to feature development or other more valuable opportunities. And by their very nature, support requests are a tax on the individuals who have to ask for help. In a perfect world, whatever they needed to accomplish would have worked properly, or been possible without making a support request. *By proactively working to ensure users don’t have to ask for help, you end up with happier, more self-sufficient users and a more efficient development team*.

In addition to avoiding support requests completely, it’s also important to reduce the time to resolution. Creating tools, runbooks, or charts that support team members can rely on will help fix issues faster, cutting down on the investment in responding to support requests.

Support requests are very unique to the application, however there are a handful of common approaches that generally apply:

* Make incremental UX/UI improvements/messaging to reduce confusion and “how do I…” requests.
* For error-prone flows, consider automatic retries, or help users understand that a failure occurred and let them know how they can trigger another attempt.
* Improve messaging (in-app as well as external) to reduce support requests going to the wrong channel.
* Evaluate in-app ways for users to submit support requests that prompt users for helpful context and can automatically include debugging information like user identifier, browser version, etc.
* Consider the cost/benefit balance of building features to address needs that users can only accomplish by submitting a support request (new statuses or other drop list entries often fall into this category)
* Build tools to automate activities support staff do frequently (logging into consoles, pulling database copies, checking the state of data in external systems, etc.)
* Look for non-support communications (like feature requests) that come in on more “urgent” channels (or those you have to actively monitor). Evaluate how to get these out of the support request flow that interrupts your team (demanding a response) and instead come through a periodically reviewed flow (perhaps a regular meeting, or feature request workflow).
* For calculations, consider providing an “introspection” view that shows the inputs used for the calculation as well as any intermediate steps. Users may see a final result and feel “this isn’t right”. Allowing them to self-service the reason helps build confidence in the system. These views are also useful for developer debugging too, reducing support response time!

Another category of common approaches involves alerts, logging, or reports. Instead of including those above, I want to give them special attention as there are nuanced considerations for each. The general approach is to ensure support staff know about a problem before someone has to notify support. This has two critical benefits:

* Users’ perception of the tool improves, as we save them the hassle of submitting a bug...and at times issues can get fixed before they even know they happened.
* Automated alerts/logging/reports provide far more context and debugging information than most support requests, saving back/forth time.

You can reduce support by:

* Identify obviously “broken” or invalid data that will eventually cause users trouble. If it will blow up, create an alert that identifies this situation. If that data will break or invalidate the “tuesday report”, consider logging the finding, and sending an email Monday with links to the log entries.
* Job queues are notorious for causing support headaches. They promise to speed up your users’ browser experience by moving external connections like emails out of band. But they back up, stop processing or fail silently...all resulting in frustrated or confused users (and engineers)! This is a topic unto itself...look for a doc that goes into more detail. Consider basic alerts for common failure scenarios: 1) Alert when any job is more than X minutes old, 2) Alert when a job fails. Consider alerting when job creation or job queue size gets over a certain threshold to catch issues with delayed processing earlier.
* Wrap alerts around all external dependencies. If there’s anything certain with the world of microservices and moving dependencies out of a large monolith, it’s that they’ll fail or get slow at some point and your first heads up will be an urgent support request. This is also a big topic that warrants an entire document, but here are a few safe checks: 1) Set alert thresholds to catch request times escalating, 2) If you have automatic retries, alert when requests still fail or at a certain error rate 3) Without retries, consider alerting on every failure if there’s direct user impact (slow response or complete request failure) as a result.

While alerts give the most signal to noise impact (when configured well), logging and charting tools still come in handy. They’re especially useful for applications with very little monitoring to help establish expected behavior or ranges. A human can very effectively scan a wall of charts and quickly pick out anomalies that may warrant an alert. Humans can also quickly filter out noise that may be difficult to automate with alerts.

Good candidates for charts are areas that are likely to cause trouble or could indicate the source of a problem:

* CPU utilization
* Network traffic
* Memory usage
* Request failures
* Login counts
* Add a “health check” event that gets passed through each job queue and reports on it’s time-in-queue

# Continuous Improvement

Entire books have been devoted to this topic, and I won’t try to do more than make a few comments, and recommend a few resources:

* Continuous improvement needs to be called out as many team members may not instinctively put time towards work that doesn’t directly please users. They need to be encouraged to take time out...to slow down so they can go fast.
* Focus on impact. Continuous improvement is a skill that needs exercising and honing. While it’s often easier to look at how many things a team improves, the more valuable metric (even if subjective) is the impact of the improvements. Be careful not to confuse “impactful” with “big”. Large scale improvements can take months before getting any benefit, while small changes every day may deliver more value. Your context matters.
* Read [2 Second Lean](https://amzn.to/2r4GMNH)\* for a primer in “always be improving small things” and applying improvement thinking to many areas of your life (Very quick read)
* Read [The Phoenix Project](https://amzn.to/2QmmIVl)\* to see a team transition from mediocrity to excellence through smart prioritization, continuous improvement, and automation.

\* These are Amazon affiliate links, so you're helping support my blogging habit if you buy one of these books.

# Please Users

This is the “good stuff” most of us get excited about when we consider our work. This is the opportunity to:

* Implement features that make a difference
* Respond to support requests

There’s not a lot to say here, because generally we’re all pretty good at this! And if we fall down, users will let us know. :)

# <a name="tldr"></a>TL;DR - Summary

There are generally four areas that we focus on as application developers:

* Address Alerts - Any automated notification (email, page, slack, etc).
* Reduce Support - Communications that are initiated by humans.
* Continuous improvement - Work done to make the system (code, infrastructure, processes, etc) better in ways that users did not request.
* Please Users - Things users of the application want. This may be feature work, responding to user requests, or support.

It’s natural to prioritize these backwards, especially when under pressure to deliver more. And it can feel counterintuitive to do anything before pleasing users. And yet, neglecting the other three areas results in ever-growing burden that will quickly cause an app’s progress to slow.

Instead, doing the following will accelerate feature development and result in a more reliable tool for users:

1.  Take action on every alert, as soon as possible. They are always the highest priority.
  * If an alert has no immediate action, either silence it or log it for later review as part of continuous improvement.
  * Fix or improve anything (code, infra, dependencies) that’s prone to alerts.
  * Automate actions that are predictable
  * Reduce the audience of alerts. Fewer is better...and ideally just the person who will take action.
2. Reduce Support
  * Automate or document solutions to frequent requests.
  * Address the source of support requests so users can self-serve or avoid getting stuck.
  * Cut down the channels that feature requests can come through
3. Continuous Improvement
  * Implement metrics so you’re not blind to what your application is doing and its health
  * Stabilize anything fragile or time-consuming to maintain
  * Cut down on sources of non-alert problems (“warns”)
  * Add charts for areas likely to cause trouble that you can’t alert on yet
4. Please Users - After ensuring that all alerts have been actioned and time has been allocated to reduce support and invest in continuous improvement, then get cracking on the work that will delight users.

Does that mean you shouldn’t please users until you’ve fixed all the alerts, software issues, and technical debt? No! The focus is on ensuring that the first three areas have a healthy focus and investment alongside the need to please users.
