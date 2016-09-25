class Node 
  attr_accessor :value, :left, :right
  def initialize(value=nil, left=nil, right=nil)
    @value = value
    @left, @right = left, right
  end
end

class Tree
  attr_accessor :root
  def initialize()
    @root = nil
  end

  def to_object
    return @root
  end

  def add(value)
    curr = @root
    if curr == nil
      @root = Node.new(value, nil, nil)
    end
    while curr != nil
        if (value < curr.value) && (curr.left == nil)
            curr.left = Node.new(value,nil,nil)
        elsif  (value > curr.value) && (curr.right == nil)
            curr.right = Node.new(value,nil,nil)
        elsif (value < curr.value)
            curr = curr.left
        elsif (value > curr.value)
            curr = curr.right
        else
            return
        end
    end
  end
end
