TreeNode = Struct.new(:val, :left, :right) do 
  def height
    self ? 1 + [left&.height || 0, right&.height || 0].max : 0
  end

  def get_levels(levels = [], depth = 0, h = height)
    return levels if depth >= h
    levels[depth] ||= []
    levels[depth] << val
    self.left = TreeNode.new('_') unless left
    self.right = TreeNode.new('_') unless right
    left.get_levels(levels, depth + 1, h)
    right.get_levels(levels, depth + 1, h)
    levels
  end

  def to_s
    puts ""
    levels = get_levels
    levels.each_with_index do |level, depth|
      padding   = ((levels.size - depth) > 1) ? ' ' * ((levels.size - depth) * 2) : (' ' * 3)
      # puts "padding is #{padding.size}"
      level     = level.map { |val| val.nil? ? '_' : val }
      node_vals = level.join(' ' * (levels.size - depth))
      puts "#{padding}#{node_vals}"
    end
    puts ""
  end

  # def self.createTree(arr)
  #   root  = TreeNode.new(arr.shift)
  #   queue = [root]
  #   until arr.empty?
  #     node = queue.shift
  #     left = arr.shift
  #     right = arr.shift
  #     node&.left  = left && TreeNode.new(left)
  #     node&.right = right && TreeNode.new(right)
  #     queue.push(node&.left, node&.right)
  #   end
  #   root
  # end
end

def createTree(arr)
  root  = TreeNode.new(arr.shift)
  queue = [root]
  until arr.empty?
    node = queue.shift
    left = arr.shift
    right = arr.shift
    node&.left  = left && TreeNode.new(left)
    node&.right = right && TreeNode.new(right)
    queue.push(node&.left, node&.right)
  end
  root
end

def displayTree(arr)
  createTree(arr).to_s
end

# puts TreeNode.createTree([1,2,3,4,5,6,7]).height # 3
# puts TreeNode.createTree([1,2,3,4,5,6,7])
# #       1
# #     2  3
# #   4 5 6 7
# # #<TreeNode:0x000055ae4b5461a0>

# puts (TreeNode.createTree([1,2,2,nil,3,3]))
# #       1
# #     2  2
# #   _ 3 3 _
# # #<TreeNode:0x000055ae4b5457c8>