// building a sample array of size (n)
var a = []
var nSample = Math.round(Math.random() * 100)
for (var i=0; i < nSample; i++) {
  a.push(Math.round(Math.random() * nSample))
}

// insertion sort
var insertionSort = function(a) {
  for (var i = 0; i < a.length; i++) {
    var curr = a[i];
    for (var idx = i - 1; idx >= 0 && a[idx] > curr; idx--) {
      a[idx + 1] = a[idx];
    }
    a[idx+1] = curr;  
  }
  return a
}