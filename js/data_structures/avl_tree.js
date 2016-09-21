// reference: AVL Trees
// from Brian Holt's CS Course

class Node {
  constructor(value, left=null, right=null) {
    this.left = left;
    this.right = right;
    this.value = value;
    this.height = 1;
  }
  add(value) {
    if (value < this.value) {
      // go left
      if (this.left) {
        this.left.add(value);
      }
      else {
        this.left = new Node(value);
      }
      if (!this.right || this.right.height < this.left.height) {
        this.height = this.left.height + 1;
      }
    }
    else {
      if (this.right) {
        this.right.add(value);
      }
      else {
        this.right = new Node(value);
      }
      if (!this.left || this.right.height > this.left.height) {
        this.height = this.right.height + 1;
      }
    }
    this.balance();  
  }
  balance() {
    const rightHeight = (this.right) ? this.right.height : 0;
    const leftHeight = (this.left) ? this.left.height : 0;
    
    if (leftHeight > rightHeight + 1) {
      const leftRightHeight = (this.left.right) ? this.left.right.height : 0;
      const leftLeftHeight = (this.left.left) ? this.left.left.height : 0;
      if (leftRightHeight > leftLeftHeight) {
        this.left.rotateRR();
      }
      this.rotateLL();
    }
    else if (rightHeight > leftHeight + 1) {
      const rightRightHeight = (this.right.right) ? this.right.right.height : 0;
      const rightLeftHeight = (this.right.left) ? this.right.left.height : 0;
      
      if (rightLeftHeight > rightRightHeight) {
        this.right.rotateLL();
      }
      this.rotateRR();
    }
  }
  rotateRR() {
    const valBefore = this.value;
    const lBefore = this.left;
    this.value = this.right.value;
    this.left = this.right;
    this.right = this.right.right;
    this.left.right = this.left.left;
    this.left.left = lBefore;
    this.left.value = valBefore;
    this.left.updateInNewLocation();
    this.updateInNewLocation();
  }
  rotateLL() {
    const valBefore = this.value;
    const rBefore = this.right;
    this.value = this.left.value;
    this.right = this.left;
    this.left = this.left.left;
    this.right.left = this.right.right;
    this.right.right = rBefore;
    this.right.value = valBefore;
    this.right.updateInNewLocation();
    this.updateInNewLocation();
  }
  updateInNewLocation() {
    if (!this.right && !this.left) {
      this.height = 1;
    }
    else if (!this.right || (this.left && this.right.height < this.left.height)) {
      this.height = this.left.height + 1;
    }
    else {
      this.height = this.right.height + 1;
    }
  }
  serialize() {
    const result = { value: this.value };
    result.left = this.left === null ? null : this.left.serialize();
    result.right = this.right === null ? null : this.right.serialize();
    result.height = this.height;
    return result;
  }
}

class Tree {
  constructor() {
    this.root = null;
  }
  add(value) {
    if (!this.root) {
      this.root = new Node(value);
    }
    else {
      this.root.add(value)
    }
  }
  toObject() {
    return this.root;
  }
}