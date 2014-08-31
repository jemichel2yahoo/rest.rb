#!/bin/ruby -w
require 'net/http'
puts Net::HTTP.get_response(URI.parse('http://jemichel.org')).body

