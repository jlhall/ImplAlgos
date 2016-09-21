// building a sample array of size (n)
var a = []
var nSample = Math.round(Math.random() * 100)
for (var i=0; i < nSample; i++) {
  a.push(Math.round(Math.random() * nSample))
};

// Quick Sort
var quick_sort = function(a) {
    if (a.length <= 1) return a;
    var left = [], right = [], pivot = a[a.length-1];
    for (var i = 0; i < a.length-1; i++) {
        a[i] < pivot ? left.push(a[i]) : right.push(a[i]);
    };
    return [...quick_sort(left), pivot, ...quick_sort(right)];
};