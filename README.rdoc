= Campfire handler for Chef using Tinder

Report chef exceptions to Campfire.

Works fine with chef versions: 0.9.x and 0.10.x

== Usage

  gem install campfire_handler

In your chef client file (often placed at /etc/chef/client.rb) put:

  require "campfire_handler"
  exception_handlers << CampfireHandler.new(:subdomain => "your-campfire-subdomain",:token => "your-campfire-token-key")


== Contributors
  Hat tip to Umang Chouhan (uchouhan) for the campfire gem.

== Copyright

Copyright (c) 2011 Brian Scott, See LICENSE for details.

