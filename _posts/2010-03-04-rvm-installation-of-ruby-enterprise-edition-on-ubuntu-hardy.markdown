--- 
layout: post
title: RVM installation of Ruby Enterprise Edition on Ubuntu Hardy
wordpress_id: 334
wordpress_url: http://timharvey.net/2010/03/04/rvm-installation-of-ruby-enterprise-edition-on-ubuntu-hardy/
categories: []

tags: []

---
I decided to try out Rackspace Cloud for a new worker server that [Am I Down](http://amidownhq.com/) needed. Since I wanted to keep the system tight on memory usage, I decided to go with Ruby Enterprise Edition. Unfortunately, I ran into a snag getting it installed via RVM (the terrific tool for running multiple versions of Ruby).I kept getting this error after running "rvm install ree":[code]Error running './installer -a /home/username/.rvm/rubies/ree-1.8.7-2010.01  --dont-install-useful-gems ', please check /home/username/.rvm/log/ree-1.8.7-2010.01/install*.logThere has been an error while trying to run the ree installer. Aborting the installation.[/code]I couldn't find anything on how to fix this as I poked around Google. Since I use zsh (via the amazing Oh My Zsh project), I figured that had to be conflicting with it. I did resolve one issue caused by the old version of zsh installed via "sudo aptitude install zsh" by compiling zsh from source (a newer version).The Solution: Install Readline headers---But...back to the issue at hand. The solution became clear when I tried to install REE from source. The REE installer complained about missing "GNU Readline development headers". Running the installation for readline fixed it.[code]sudo aptitude install libreadline5-dev[/code]From there, RVM installed REE no problem.**Update (3/5/2010):** Wayne, the author of RVM kindly wrote to me on Twitter within hours of this post to see if there was some working improperly with RVM. It turns out that I missed a clear set of instructions that indicated the need to install readline5 when using REE. Thanks Wayne!
