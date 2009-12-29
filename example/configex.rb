#!/usr/bin/ruby
load "/home/ashaman/projects/ruby/config/config.rb"
conf = Config.new
conf.verbose = 1
conf.Load("/home/ashaman/projects/ruby/config/example/ex.conf")
conf.getOption("nonexistant")
puts "examplesetting : " + conf.getOption("examplesetting")
puts "example2 : " + conf.getOption("example2")
puts "example3 : " + conf.getOption("example3")
