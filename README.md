** About

This is a simple application to demonstrating using [Twilio](http://twilio.com)
with (webmachine-ruby)[https://github.com/seancribbs/webmachine-ruby/]. The
sample includes cucumber features that validate the behavior of the menus,
using Rack::Test.

** Running

You can run the sample by either deploying to Heroku, or running locally and
using a service like (localtunnel)[http://localtunnel.com] to expose your
service externally, and then configuring a new Twilio application to point
to the "/new" resource (e.g. http://abcd.localtunnel.com/new)
