// sample creation; random n sized array
var a = []
var nSample = Math.round(Math.random() * 100)
for (var i=0; i < nSample; i++) {
  a.push(Math.round(Math.random() * nSample))
}

// selection sort
var selectionSort = function(a) {
  var firstIdx, secondIdx, currVal, compareVal
  for (firstIdx = 0; firstIdx < a.length - 1; firstIdx++) {
    currVal = firstIdx;
    for (secondIdx = firstIdx + 1; secondIdx < a.length; secondIdx++) {
      if (a[secondIdx] < a[currVal]) {
        currVal = secondIdx;
      }
      if (currVal != firstIdx) {
        compareVal = a[currVal];
        a[currVal] = a[firstIdx];
        a[firstIdx] = compareVal;
      }
    }
  }
  return a;
}