import math
import random
n = random.randint(1, 1000)
ab = []
for i in range(n):
  ab.append(random.randint(1, n))

def merge_sort(a):
    if len(a)>1:
        mid = len(a)//2
        lefthalf = a[:mid]
        righthalf = a[mid:]
        merge_sort(lefthalf)
        merge_sort(righthalf)

        left_counter=0
        right_counter=0
        result_counter=0
        while left_counter < len(lefthalf) and right_counter < len(righthalf):
            if lefthalf[left_counter] < righthalf[right_counter]:
                a[result_counter]=lefthalf[left_counter]
                left_counter+=1
            else:
                a[result_counter]=righthalf[right_counter]
                right_counter+=1
            result_counter+=1

        while left_counter < len(lefthalf):
            a[result_counter]=lefthalf[left_counter]
            left_counter+=1
            result_counter+=1

        while right_counter < len(righthalf):
            a[result_counter]=righthalf[right_counter]
            right_counter+=1
            result_counter+=1
    return a

print merge_sort(ab)
