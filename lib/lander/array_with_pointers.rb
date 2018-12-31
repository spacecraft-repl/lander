def ShowArray(array, left_pointer, right_pointer)
	return unless valid_pointers?(left_pointer, right_pointer)
	
	buffer = ' ' * 3
	left = find_left_position(left_pointer)
	right = find_right_position(array, right_pointer)

	puts "Left is #{left_pointer}, Right is #{right_pointer}"
	display_array(array, left, right, buffer)
end

def valid_pointers?(left_pointer, right_pointer)
	if (left_pointer < 0) || (right_pointer < -1)
		puts "Please enter valid pointer values." 
		puts "Left pointer values should be in range 0..(array.length - 1)"
		puts "Right pointer values should be in range 0..(array.length - 1) OR -1"
		return false
	end
	true
end

def find_left_position(left_pointer)
	(3 * left_pointer)
end

def find_right_position(array, right_pointer)
	return (3 * (array.length - 1)) if right_pointer == -1
	(3 * right_pointer)	
end

def display_array(array, left, right, buffer)
	if left == right 
		puts "#{buffer}#{array}"
		puts "#{buffer}#{' ' * left} ^"
		puts "#{buffer}#{' ' * left} L"
		puts "#{buffer}#{' ' * right} R"
	elsif left < right
		puts "#{buffer}#{array}"
		puts "#{buffer}#{' ' * left} ^" + "#{' ' * (right - left - 1)}^"
		puts "#{buffer}#{' ' * left} L" + "#{' ' * (right - left - 1)}R"
	else
		puts "#{buffer}#{array}"
		puts "#{buffer}#{' ' * right} ^" + "#{' ' * (left - right - 1)}^"
		puts "#{buffer}#{' ' * right} R" + "#{' ' * (left - right - 1)}L"
	end
end
