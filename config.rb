#!/usr/bin/ruby
class Config
	attr_accessor :verbose
	def initialize()
		@options = Array.new
		@verbose = 0
	end
	def addOption(i_option)
		if @verbose == 1
			puts i_option[0] + " : " + i_option[1]
		end
		@options.insert(0,i_option)
	end

	def getOption(i_option)
		for i in 0..@options.size-1 do
			if @options[i][0] == i_option
				return @options[i][1]
			end
		end
		if verbose == 1
			puts i_option + " NOT FOUND"
		end
	end

	def Load(i_path)
		configfile = File.open(i_path)
		templines = Array.new
		configfile.each {|temp| templines.insert(0,temp) }
		for i in 0..templines.size-1 do
			if templines[i].class == String	
				temparray = templines[i].split(/=/)
				if temparray.size == 2
					temparray[1] = temparray[1][0..temparray[1].size-2]
					addOption(temparray)
				end
			end
		end
	end
end
