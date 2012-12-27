---
layout: post
title: Finding someone else's class names in your app

---

A developer I work with made the comment that, "Seeing someone else's company name in your code is a smell."

That's pretty darn good wisdom. Isolating the parts of your app most likely to change from those that are stable could be one of the best heuristics for maintaining a growing app. It's good design and is the subject of the metrics from the [churn gem](https://rubygems.org/gems/churn).  This kind of proxy class can also make testing easier. You can add test-env specific code, or stub methods in your app instead of on a gem (horrors).

So...next time you add a gem to your application, take a few moments to consider whipping up a proxy class that hides the gem's classes. The easiest way to do this is to delegate directly to the gem's methods using the same method names.  You could think about using my favorite toy, #delegte, in Rails, but sometimes the simplest thing works great.

As an example, I recently implemented the fantastic stats tracking tool [InstrumentalApp](http://instrumentalapp.com/). Instead of referencing their gem directly throughout my code, I wrapped it up, making a change to another stat tracking library easier down the road:

    module YourAppName
      module Metrics
        # All class methods
        class << self

          # Public: increment a counter with the given name
          def increment(key_name)
            I.increment(key_name)
          end

          # Public: Record a value at the current time for the given keyname
          def gauge(key_name, value)
            I.gauge(key_name, value)
          end

          # Public: Store the time it takes to complete the given block
          def time(key_name, &block)
            I.time(key_name) do
              yield
            end
          end

          # Public: Store the time in ms it takes to complete the given block
          def time_ms(key_name, &block)
            I.time_ms(key_name) do
              yield
            end
          end

          # Public: Change whether the stats are recorded in the background
          # without interrupting the request (and may be dropped if there are
          # connection issues) or if it will block the request.
          #
          # Don't turn on "synchronous" in production or you'll have a bad time.
          # It's really only for back-filling old data when we have all the
          # time in the world and don't want to lose any metric.
          def synchronous=(value)
            I.synchronous = value
          end
        end
      end
    end

While we could get cute with Ruby and do some #method\_missing and \*args, I think it's better to be explicit with our proxy class. List the exact methods you will support long-term (since you'll need to keep them around if you switch libraries) and with what arguments.

So take a look through your app. Where are you using the class name of a gem when you should consider wrapping their class with your own?
