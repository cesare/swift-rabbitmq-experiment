#!/usr/bin/env ruby

require "bunny"
require "json"

conn = Bunny.new
conn.start

ch = conn.create_channel
x = ch.default_exchange

title, text = ARGV[0, 2]
message = {
  title: title,
  text: text,
}.to_json

x.publish(message, routing_key: "hello")
