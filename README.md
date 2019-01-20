![Lander](lander_logo_type.png)

Coding challenges aren't just on whiteboards. Oftentimes, programmers will need to solve problems through a screen-sharing program like CoderPad or SpaceCraft. While it's easy to draw what your data structure should look like on a whiteboard, it's a tedious process to use `puts` to log your data structure to the console.

With Lander, it's easy to log your data structure to the console and gain a clearer sense of what's happening in your code. Just call the appropriate method in your program and your data structure will be displayed when you execute it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lander'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lander

## Usage

The three data structures that are currently supported by Lander are arrays with two pointers, singly linked lists, and binary trees. To use Lander and log these data structures, first require Lander in your code:

```ruby
require 'lander'    
```

To log arrays with two pointers, write `Lander.show_array(array, left_pointer, right_pointer)` where the `left_pointer` and `right_pointer` arguments are the array indexes you want the pointers to be placed. So `Lander.show_array([1,2,3,4], 0, 3)` will log:

```ruby
Left is 0, Right is 3
   [1, 2, 3, 4]
    ^        ^
    L        R
```

To log linked lists, write `Lander.show_linked_list(array)` where array contains the node values of your linked list starting with the first node and ending with the last node. The logged linked list will end with a nil value. So `Lander.show_linked_list([1,2,3,4])` will log:

```ruby
1 -> 2 -> 3 -> 4 ->
```

To log binary trees, write `Lander.show_tree(array)` where array contains the node values of the tree nodes. Note that the node values should be entered in this order:

```ruby
[root_node,
    second_level_left_node, second_level_right_node,
        third_level_left_branch_left_node, third_level_left_branch_right_node,
        third_level_right_branch_left_node, third_level_right_branch_right_node,
            ....
]
```
So an array argument of `[1, 2, 3, 4, 5, 6, 7]` will be logged liked so:

```ruby
      1
    2  3
   4 5 6 7
```
   
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/spacecraft-repl/lander. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Lander project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/spacecraft-repl/lander/blob/master/CODE_OF_CONDUCT.md).

## Design
[Design by linzimurray.creative](https://www.instagram.com/linzimurray.creative/)
