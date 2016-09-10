// building a sample array of size (n)
var a = []
var nSample = Math.round(Math.random() * 100)
for (var i=0; i < nSample; i++) {
  a.push(Math.round(Math.random() * nSample))
}

const switchEm = (arr, i, j) => {
  var curr = arr[i];
  arr[i] = arr[j];
  arr[j] = curr;
}

const sortDown = (arr, i, max) => {
  var i_large, a1, a2;
  while(i < max) {
    i_large = i;
    a1 = 2 * i + 1;
    a2 = a1 + 1;
    if (a1 < max && arr[a1] > arr[i_large]) {
      i_large = a1;
    }
    if (a2 < max && arr[a2] > arr[i_large]) {
      i_large = a2;
    }
    if (i_large == i) {return};
    switchEm(arr, i, i_large);
    i = i_large;
  }
}

const heapOrder = (arr) => {
  var i = arr.length / 2 - 1;
  i = Math.floor(i);
  while (i >= 0) {
    sortDown(arr, i, arr.length);
    i -= 1;
  }
}

const heapSort = (arr) => {
  heapOrder(arr);
  finish = arr.length - 1;
  while(finish > 0) {
    switchEm(arr, 0, finish);
    sortDown(arr, 0, finish);
    finish -= 1
  }
  return arr;
}
