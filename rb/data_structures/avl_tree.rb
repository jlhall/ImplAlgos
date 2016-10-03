class Node
  attr_accessor :left, :right, :value, :height

  def initialize(value, left=nil, right=nil)
    @left, @right = left, right
    @value = value
    @height = 1
  end

  def self.update_in_new_loc
    if (@right == nil && @left == nil)
      @height = 1
    elsif (@right == nil || (@left != nil && @right.height < @left.height))
      @height = @left.height + 1
    else
      @height = @right.height + 1
    end
  end

  def self.rotateLL
    val_before = @value
    right_before = @right
    @value = @left.value
    @right = @left
    @left = @left.left
    @right.left = @right.right
    @right.right = right_before
    @right.value = val_before
    @right.update_in_new_loc
    self.update_in_new_loc
  end

  def self.rotateRR
    val_before = @value
    left_before = @left
    @value = @right.value
    @left = @right
    @right = @right.right
    @left.right = @left.left
    @left.left = left_before
    @left.value = val_before
    @left.update_in_new_loc
    self.update_in_new_loc
  end

  def self.balance
    right_height = (@right != nil) ? @right.height : 0
    left_height = (@left != nil) ? @left.height : 0

    if left_height > right_height + 1
      left_right_height = (@left.right != nil) ? @left.right.height : 0
      left_left_height = (@left.left != nil) ? @left.left.height : 0
      if (left_right_height > left_left_height)
        @left.rotateRR
      end
      self.rotateLL
    elsif right_height > left_height + 1
      right_right_height = (@right.right != nil) ? @right.right.height : 0
      right_left_height = (@right.left != nil) ? @right.left.height : 0
      if (right_left_height > right_right_height)
        @right.rotateLL
      end
      self.rotateRR
    end
  end

  def add(value)
    if value < @value
      if @left != nil
        @left.add(value)
      else
        @left = Node.new(value)
      end
      if @right == nil || (@right.height < @left.height)
        @height = @left.height + 1
      end
    else
      if @right != nil
        @right.add(value)
      else
        @right = Node.new(value)
      end
      if @left == nil || (@right.height > @left.height)
        @height = @right.height + 1
      end
    end
    Node.balance
  end
end

class Tree
  attr_accessor :root
  def initialize(root=nil)
    @root = root
  end

  def add(value)
    if (@root == nil)
      @root  = Node.new(value)
    else
      @root.add(value)
    end
  end

  def to_object
    return @root
  end
end
