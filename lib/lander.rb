require_relative 'lander/version'
require_relative 'lander/list_node'
require_relative 'lander/tree_node'
require_relative 'lander/array_with_pointers'
# require 'lander/heaps'

# module Lander
#   class Error < StandardError; end
#   # Your code goes here...
# end

class LanderClass
	def self.show_array(arr, left_pointer, right_pointer)
		ShowArray(arr, left_pointer, right_pointer)
	end

	def self.show_linked_list(arr)
		puts createLinkedList(arr)
	end

	def self.show_tree(arr)
		displayTree(arr)
	end
end

LanderClass.show_array([1,2,3,4], 2, 3)
puts ""
LanderClass.show_linked_list([1,2,3,4])
puts ""
LanderClass.show_tree([1,2,3,4,5])
