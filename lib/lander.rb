require_relative 'lander/version'
require_relative 'lander/list_node'
require_relative 'lander/tree_node'
require_relative 'lander/array_with_pointers'
# require 'lander/heaps'

# module Lander
#   class Error < StandardError; end
#   # Your code goes here...
# end

class Lander
	def self.show_array(arr, left_pointer, right_pointer)
		ShowArray(arr, left_pointer, right_pointer)
	end
end

LanderClass.show_array([1,2,3,4], 2, 3)