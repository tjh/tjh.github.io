--- 
layout: post
title: "RubyGems error: marshal data too short"
wordpress_id: 356
wordpress_url: http://timharvey.net/?p=356
categories: []

tags: []

---
**UPDATE (7:21pm):**So...I find out that RVM symlinks into .gem/, so deleting completely may have been a bad idea. But...I was able to do "rvm reload" and "rvm update --head" that seem to have restored the symlinks I broke in the process. Life is good again.While trying to install the latest Rails3 beta, I was beating my head against the following error:``ERROR:  While executing gem ... (ArgumentError)    marshal data too short``I'm running RVM and despite attempts to run "gem install rails --pre" on various ruby versions, every time I got the some error.After bruising my head against nearby objects for a while, I found a small [reference on a blog](http://keyj.wordpress.com/2009/03/20/error-with-rubygems-marshal-data-too-short/) about gems in ~/.gem. After wiping them out, everything worked great! In the process, I blew away /usr/local/ copies of the gems as well (so your mileage may vary).
