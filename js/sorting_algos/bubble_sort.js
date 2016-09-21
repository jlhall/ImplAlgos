// building a sample array of size (n)
var a = []
var nSample = Math.round(Math.random() * 100)
for (var i=0; i < nSample; i++) {
  a.push(Math.round(Math.random() * nSample))
}

// bubble sort
var bubbleSort = function(a) {
  for (i=0; i < a.length; i++) {
    for (j=0; j < a.length-1; j++) {
      if (a[j+1] < a[j]) {
        var swapMe = a[j+1];
        a[j+1] = a[j]
        a[j] = swapMe;
      }
    }
  }
  return a
}