import random
n = random.randint(1, 1000)
ab = []
for i in range(n):
  ab.append(random.randint(1, n))

def shell_sort(a):
  gap = len(a) / 2
  while gap > 0:
    for i in range(gap, len(a)):
      curr = a[i]
      j = i
      while j >= gap and a[j-gap] > curr:
        a[j] = a[j-gap]
        j-= gap
      a[j] = curr
    gap /= 2
  return a

print shell_sort(ab)