import random
n = random.randint(1, 1000)
ab = []
for i in range(n):
  ab.append(random.randint(1, n))
  
def ins_sort(a):
  for i in range(1, len(a)):
    curr_val = a[i]
    replace_idx = i
    while replace_idx > 0 and a[replace_idx - 1] > curr_val:
      a[replace_idx] = a[replace_idx - 1]
      replace_idx = replace_idx - 1
    a[replace_idx] = curr_val 
  return a

print ins_sort(ab)