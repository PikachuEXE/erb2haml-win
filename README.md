erb2haml-win
========
**erb2haml-win** adds a simple rake task to your Rails app to converts all ERb HTML files in `APP_HOME/app/views/` to Haml.

**Windows Only!**

Forked from https://github.com/dhl/erb2haml

Change Log
---------------

0.1.3

- The first working version for Windows!
- Rake task are displayed correctly
- I only notice the naming is reversed after releasing lol

Getting Started
---------------

1. Add `gem "erb2haml"` to the development group in your Gemfile.

Either add the line `gem "erb2haml", :group => :development` to your `Gemfile`, or

```ruby
group :development do
  ...
  gem "erb2haml-win"         # Add this line
  ...
end
```

2. Run `rake haml:toErb`
3. Watch your ERB files getting converted to haml.

And that's it!

Other commands:

- `rake haml:delErb` for deleting *.erb
- `rake haml:toDelErb` for converting & deleting *.erb

Comming (or not)
---------------

0.1.4

- Change Task names (or not if I found that funny)
- Add Tasks for conversion and deletion while excluding *.js.erb (Since not quite useful)

Copyright
---------
Copyright (c) 2011 David Leung. See LICENSE for further details.

