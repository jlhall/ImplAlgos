// building a sample array of size (n)
var a = []
var nSample = Math.round(Math.random() * 100)
for (var i=0; i < nSample; i++) {
  a.push(Math.round(Math.random() * nSample))
};

// Quick Sort
var quick_sort = function(a) {
    if (a.length <= 1) return a;

    var left = [], right = [], pivot = a[0];

    for (var i = 1; i < a.length; i++) {
        a[i] < pivot ? left.push(a[i]) : right.push(a[i]);
    };

    return quick_sort(left).concat(pivot, quick_sort(right));
};