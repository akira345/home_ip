#!/usr/local/bin/ruby
#require 'rubygems'

require 'hpricot'
require 'open-uri'
require 'netaddr'
require 'HomeIP.rb'
require 'SoftBank.rb'
require 'DoCoMo.rb'
require 'AU.rb'

#Test For SoftBank
puts "SoftBank CIDR List"
softbank = SoftBank.new
puts softbank.cidrlist

#Test For DoCoMo
puts "DoCoMo CIDR List"
docomo = DoCoMo.new
puts docomo.cidrlist

#Test For AU
puts "AU CIDR List"
au = AU.new
puts au.cidrlist


