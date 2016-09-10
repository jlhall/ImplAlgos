// building a sample array of size (n)
var a = []
var nSample = Math.round(Math.random() * 100)
for (var i=0; i < nSample; i++) {
  a.push(Math.round(Math.random() * nSample))
}

// Merge Sort
// ES6
const stitchLists = (left, right) => {
  const results = [];
  
  while (left.length && right.length) {
    if (left[0] <= right[0]) {
      results.push(left.shift());
    } 
    else {
      results.push(right.shift());
    }
  }
  return [...results, ...right, ...left];
};

const mergeSort = (nums) => {
  if (nums.length < 2) {
    return nums;
  }
  
  const length = nums.length;
  const mid = Math.floor(length / 2);
  const left = nums.slice(0, mid);
  const right = nums.slice(mid, length);
  
  const sortedLeft = mergeSort(left);
  const sortedRight = mergeSort(right);
  
  return stitchLists(sortedLeft, sortedRight);
};