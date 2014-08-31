#!/bin/ruby
require 'handsoap'

class Hello < Handsoap::Service

  endpoint({ :uri => 'http://jemichel.org/s/p', :version => 2 })
  
  def on_create_document(doc)
    doc.alias 'tns', "http://jemichel.org/s/p"
  end

  def on_response_document(doc)
    doc.add_namespace 'ns', 'http://jemichel.org/s/p'
  end

  # todo: define an operation
  
end

# It was much easier with Python suds library.
# todo: actually onvoke an operation of  the service
