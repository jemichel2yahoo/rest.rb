#!/bin/ruby -w
require 'net/http'
puts Net::HTTP.post_form( URI('http://jemichel.org/') , 'q' => 'ruby', 'max' => '50').body

