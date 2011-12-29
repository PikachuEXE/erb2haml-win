erb2haml-win
========
**erb2haml-win** adds a simple rake task to your Rails app to converts all ERb HTML files in `APP_HOME/app/views/` to Haml.

**Windows Only!**

Forked from https://github.com/dhl/erb2haml

Urgent Question
---------------

Why my rake tasks are unavailable?
But after installing the original erb2haml they appears?

Getting Started
---------------

1. Add `gem "erb2haml"` to the development group in your Gemfile.

    Either add the line `gem "erb2haml", :group => :development` to your `Gemfile`, or    
        group :development do
          ...
          gem "erb2haml-win"         # Add this line
          ...
        end

2. Run `rake haml:toErb`
3. Watch your ERB files getting converted to haml.

And that's it!

Other commands:

`rake haml:delErb` for deleting *.erb

`rake haml:toDelErb` for converting & deleting *.erb

Copyright
---------
Copyright (c) 2011 David Leung. See LICENSE for further details.

