ab = [3, 5, 1,  2, 1, 11]

def bub_sort(a):
  for i in range(len(a)-1, 0, -1):
    for j in range(i):
      if a[j] > a[j+1]:
        a[j], a[j+1] = a[j+1], a[j]
  return a

print bub_sort(ab)