direc = Array.new
Dir.each_child("C:/") {|x| direc << x }
puts direc