#!/usr/bin/ruby

out = `pwd`
puts out

out = %x[uptime]
puts out

out = %x[ls | grep 'all_lines']
puts out
