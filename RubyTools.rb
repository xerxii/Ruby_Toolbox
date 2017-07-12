#!/usr/bin/env ruby
# encoding: utf-8

require 'socket'
require 'ostruct'
require 'pp'
require 'date'
require 'ipaddr'
require 'json'

begin
  require 'system'
  require 'securerandom'
rescue LoadError=>e
  puts("The following occured: #{e}")
end

###################
# General Purpose #
###################

def padder32(item)
  if item.bytesize >= 32
    puts("The item is greater than or equal to 32")
    raise StandardError
  else
    if item.class
    



##################
# Python Helpers #
##################

# If you are used to python builtin functions and syntax, these functions should be able to help.
def is_in(data,iter)
  present = false
  iter.each{ |each| present = true if (each == data) }
  return present
end

def not_in(data,iter)
  not_in = true
  iter.each{ |each| not_in = false if (each == data) }
  return not_in
end

def is(x,y)
  return x.__id__ == y.__id__
end

def id(item)
  return item.__id__
end

def type(item)
  return item.class
end

def dir(item)
  return item.methods.sort
end

def len(item)
  return item.bytesize
end
  
def string(item)
  return

