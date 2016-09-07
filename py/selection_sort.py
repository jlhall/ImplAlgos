import random
n = random.randint(1, 1000)
ab = []
for i in range(n):
  ab.append(random.randint(1, n))

def sel_sort(a):
  for i in range(len(a)):
    minimum = min(a[i:])
    minimum_index = a[i:].index(minimum)
    a[i + minimum_index] = a[i]
    a[i] = minimum
  return a

print sel_sort(ab)