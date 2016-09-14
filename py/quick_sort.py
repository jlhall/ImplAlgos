import random
n = random.randint(1, 1000)
ab = []
for i in range(n):
  ab.append(random.randint(1, n))

def quick_sort(a):
  if a == []: return []
  return quick_sort([x for x in a[1:] if x< a[0]]) + a[0:1] + \
  quick_sort([x for x in a[1:] if x>=a[0]])

print quick_sort(ab)

# Note: list comprehensions are AMAZING
# See: http://www.secnetix.de/olli/Python/list_comprehensions.hawk