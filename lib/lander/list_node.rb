ListNode = Struct.new :val, :next do
  def to_s; self && "#{val} -> #{self.next}" end
end

def createLinkedList(arr)
  arr.map { |val| ListNode.new val }
     .tap { |nodes| nodes.each_with_index { |node, i| node.next = nodes[i+1] } }
     .first
end

# Minified:
# ListNode=Struct.new(:val,:next){def to_s;self&&"#{val} -> #{self.next}"end}
# def nodify(a);a.map{|v|ListNode.new v}.tap{|ns|ns.each_with_index{|n,i|n.next=ns[i+1]}}.first end