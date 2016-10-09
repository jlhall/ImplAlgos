import random
n = random.randint(1, 1000)
ab = []
for i in range(n):
  ab.append(random.randint(1, n))

def sort_down(a, start, finish):
  base = start
  while True:
    child = base * 2+1
    if child > finish: break
    if child + 1 <= finish and a[child] < a[child+1]:
      child += 1
    if a[base] < a[child]:
      a[base], a[child] = a[child], a[base]
      base = child
    else:
      break

def heap_sort(a):
  for start in range((len(a)-2/2), -1, -1):
    sort_down(a, start, len(a)-1)
  for finish in range(len(a)-1, 0, -1):
    a[finish], a[0] = a[0], a[finish]
    sort_down(a, 0, finish - 1)
  return a

print heap_sort(ab)