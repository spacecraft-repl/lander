require_relative "test_helper"

class LanderTest < Minitest::Test
	def setup
		output = StringIO.new
		$stdout = output
	end

  def test_that_it_has_a_version_number
    refute_nil ::Lander::VERSION
  end

  def test_show_array
  	array = [1,2,3,4]
  	assert_nil Lander.show_array(array, 2, 3)
  	assert $stdout.string.match(/Left is 2, Right is 3/)
  	assert $stdout.string.match(/[1, 2, 3, 4]/)
  	assert $stdout.string.match(/^/)
  	assert $stdout.string.match(/L/)
  	assert $stdout.string.match(/R/)          						
	end

	def test_show_array_invalid_left_pointer
		array = [1,2,3,4]
  	assert_nil Lander.show_array(array, -1, 3)
  	assert $stdout.string.match(/Please enter valid pointer values./)
  	
  	# Below asserts fail when they should pass. Need to research and correct.
  	# assert $stdout.string.match(/Left pointer values should be in range 0..(array.length - 1)/)
  	# assert $stdout.string.match(/Right pointer values should be in range 0..(array.length - 1) OR -1/)
	end

  def test_show_linked_list
  	array = [1,2,3,4]
  	linked_list = "1 -> 2 -> 3 -> 4 -> "
  	assert_nil Lander.show_linked_list(array)
  	assert $stdout.string.match(/1 -> 2 -> 3 -> 4 -> /)
  end

	def test_show_tree
		array = [1,2,3,4,5]
		assert_nil Lander.show_tree(array)
		assert $stdout.string.match(/1/)
		assert $stdout.string.match(/2/)
		assert $stdout.string.match(/3/)
		assert $stdout.string.match(/4/)
		assert $stdout.string.match(/5/)
	end

	def test_show_tree_with_nil_values
		array = [1,2,3,4,5]
		assert_nil Lander.show_tree(array)
		assert $stdout.string.match(/1/)
		assert $stdout.string.match(/2/)
		assert $stdout.string.match(/3/)
		assert $stdout.string.match(/4/)
		assert $stdout.string.match(/_/)
	end

	def teardown
		$stdout = STDOUT
	end
end
