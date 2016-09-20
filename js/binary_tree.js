// this does not handle the duplicate edge case
// which is generally handled by always going left
// or always right etc. for duplicates collecting these 
// would be to know if duplicates go left or right,
// then traverse in a pattern down the tree, 
// always going left or right, counting the duplicates!

class Node {
  constructor(value, left=null, right=null) {
    this.value = value;
    this.left = left;
    this.right = right;
  }
}

class Tree {
  constructor() {
    this.root = null;
  }
  toObject() {
    return this.root;
  }
  add(value) {
    if (this.root === null) {
      this.root = new Node(value);
      return;
    }
    let curr = this.root;
    while(true) {  
// go left if value is smaller than curr node
      if (value < curr.value) {
        // if a value already exists at left
        // change curr to that node for evaluation
        // otherwise create the new node
        if (curr.left) {
          curr = curr.left;
        }
        else {
          curr.left = new Node(value);
          return;
        }
      }
// else go right
      else {
        if (curr.right) {
          // if a value already exists at right
          // follow as above, but mirrored on right side
          curr = curr.right;
        }
        else {
          curr.right = new Node(value);
          return;
        }
      }
    }
  }
}