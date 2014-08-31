#!/bin/ruby -w
require 'net/http'
uri = URI('http://jemichel.org/')
puts Net::HTTP.new( uri.host, uri.port ).delete('/').code

