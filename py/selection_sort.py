ab = [3, 5, 1,  2, 1, 11]

def sel_sort(a):
  for i in range(len(a)):
    minimum = min(a[i:])
    minimum_index = a[i:].index(minimum)
    a[i + minimum_index] = a[i]
    a[i] = minimum
  return a

print sel_sort(ab)