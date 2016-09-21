// sample creation; random n sized array
var a = []
var nSample = Math.round(Math.random() * 100)
for (var i=0; i < nSample; i++) {
  a.push(Math.round(Math.random() * nSample))
}

var shellSort = function(a) {
    for (var len = a.length; len = parseInt(len / 2);) {
        for (var i = len; i < a.length; i++) {
            var k = a[i];
            for (var j = i; j >= len && k < a[j - len]; j -= len)
                a[j] = a[j - len];
            a[j] = k;
        }
    }
    return a;
}