require "sinatra/base"
require "yelp"
require "ruby-soda"
require_relative "server"
run Sinatra::Server

Yelp.client.configure do |config|
  config.consumer_key = 0R8Yc6Mh8bVvcoadp3oQlA
  config.consumer_secret = FyUicJJA06FHt3EX7m9wSubRXmw
  config.token = xxvEj6mVPPAYlRPyGnBx2qTHqwN7UVz
  config.token_secret = u4MiVQByvBdU5WOO41yPV3yi4zE
end

Yelp.client.search('', { term: 'food' })
