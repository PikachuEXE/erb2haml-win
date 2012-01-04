erb2haml-win
========
**erb2haml-win** adds a simple rake task to your Rails app to converts all ERb HTML files in `APP_HOME/app/views/` to Haml.

**Windows Only!**

Forked from https://github.com/dhl/erb2haml

Gem site: https://rubygems.org/gems/erb2haml-win

Change Log
---------------

0.1.4

- Add: More Tasks (toJsErb, delJsErb, toDelJsErb, toDelAllErb) (See command list for usage) (and I still use to* for task name :P )
- Change: toErb, delErb, toDelErb now handles *.html.erb only, since some people might want to keep *.js.erb (like me)
- Fix: Readme Instructions

0.1.3

- The first working version for Windows!
- Rake task are displayed correctly
- I only notice the naming is reversed after releasing lol

Getting Started
---------------

1. Add `gem "erb2haml-win"` to the development group in your Gemfile.

Either add the line `gem "erb2haml-win", :group => :development` to your `Gemfile`, or

```ruby
group :development do
  ...
  gem "erb2haml-win"         # Add this line
  ...
end
```

2. Run `rake haml:toErb`
3. Watch your .HTML.ERB files getting converted to haml.

And that's it!

Full command list:

- `rake haml:toErb` for converting *.html.erb
- `rake haml:delErb` for deleting *.html.erb
- `rake haml:toDelErb` for converting & deleting *.html.erb
- `rake haml:toJsErb` for converting *.js.erb
- `rake haml:delJsErb` for deleting *.js.erb
- `rake haml:toDelJsErb` for converting & deleting *.js.erb
- `rake haml:toDelAllErb` for converting & deleting *.erb **Use with caution/backup**

Comming (or not)
---------------

I am so busy doing my FYP...

But I might make it general gem (works on both windows & *nix) when I am free/bored

Copyright
---------
Copyright (c) 2011 David Leung. See LICENSE for further details.

