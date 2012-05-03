--- 
layout: post
title: Finally have Exchange email working on the iPhone
wordpress_id: 11
wordpress_url: http://www.timharvey.net/2008/02/21/finally-have-exchange-email-working-on-the-iphone/
categories: []

tags: []

---
![Apple iPhone](http://timharvey.net/wp-content/apple-iphone-here-181x300.gif "Apple iPhone")The iPhone now officially rocks my world.Yea, it should have been WAY easier to setup a simple integration with my work email, but that certainly wasn't the case. However, the device offers so many other sexy features that I'm willing to overlook an evening of painful tinkering for the daily joy of using the iPhone. I mean, come on...how cool is it to cruise down the road and then accomplish the following sequence (at a stop light, of course):1. Hit Google Maps, using the cell towers to pinpoint my location
2. Tap a quick search for the restaurant of my choice
3. Locate the desired establishment, tap for details
4. Tap the phone number, make reservations, then pound the gas upon green light
But really, I digress. Setting up IMAP for Exchange was pretty darn easy. The steps on the [MonkeyKit blog](http://blog.monkeykit.com/2007/08/31/how-to-setup-imap4-exchange-2003-email-to-sync-with-your-iphone/) made it a breeze. Most of it I had already done to accomplish email/vm integration with our VoIP phone system at work.The tricky part is sending email. Since we utilize PostINI for our spam processing, I have the SMTP service pretty darn locked down. That makes it about impossible to setup the iPhone to send email via SMTP through our firewall, into the Exchange server, and back out again without getting into some pretty heavy duty config. Since I'm the only one with this device, that seemed like overkill. I just can't justify that kind of customization to our environment.Instead, I followed some advice I found from others facing the same problem to simply skip our Exchange server for SMTP and instead use Google. I setup my Gmail account to also allow sending emails as my work address. The iPhone sends any outbound messages through Gmail to the ultimate recipient. The recipient replies and those get routed into my work Inbox. Perfecto!Yea, the Treo was way the heck easier, but once again...it didn't rock like the iPhone.
