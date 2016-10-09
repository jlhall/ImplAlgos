class Node(object):
  """Node class for use in binary tree"""
  def __init__(self, value, left=None, right=None):
    super(Node, self).__init__()
    self.value = value
    self.left = left
    self.right = right

class Tree(object):
  """Tree class for use in binary tree"""
  def __init__(self):
    super(Tree, self).__init__()
    self.root = None

  def add(self, value):
    curr = self.root
    if curr == None:
      self.root = Node(value, None, None)
    while curr != None:
      if (value < curr.value and curr.left == None):
        curr.left = Node(value, None, None)
      elif value > curr.value and curr.right == None:
        curr.right = Node(value, None, None)
      elif value < curr.value:
        curr = curr.left
      elif value > curr.value:
        curr = curr.right
      else:
        return
