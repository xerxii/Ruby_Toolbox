#!/usr/bin/env ruby
# encoding: utf-8

require 'socket'
require 'ostruct'
require 'pp'
require 'date'
require 'ipaddr'
require 'json'
require 'digest'
require 'openssl'
require 'base64'

begin
  # Because these are not standard, we will attempt with exception handling
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
    if item.class == 'String'.class
      #
    elif

##################
# Python Helpers #
##################
# Ruby, although supportive of OOP, does not have the same paradigm logic as python.
# However, if you are used to python builtin functions and syntax, these functions should be able to help.
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

def dir_pub(item)
  return item.public_methods
end
      
def dir_priv(item)
  return item.private_methods
end
      
def len(item)
  return item.bytesize
end

def list(*items)
  new_list = Array.new
  for each in items
    new_list.push(each)
  end
  return new_list
end
      
# We subtracted one to help Python coders
# In python, the range function "goes up to but not including
# So range(0,10) would make an iter from 1 to 9
def range(start, up_to)
  return (start..(up_to - 1))
end
