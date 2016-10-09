# a = sample array of size (n)
n_sample = rand(1..100)
a = (1..n_sample).to_a.shuffle
expect_output = a.sort

# selection sort
def sel_sort(arr)
  for i in (0..arr.size-2)
    k = i
    for j in (i+1..arr.size-1)
      k = j if arr[j] < arr[k]
    end
    arr[i], arr[k] = arr[k], arr[i]
  end
  return arr
end

# Quadratic runtime
# Why use? Selection sort minimizes the number of swaps!!! 
# If in a given situation there is significant cost to swapping, selection sort may be worth using.

# Key properties:
  # Not stable (that is: two keys in the input array with equal values may not necessarily remain in the same order in the output/sorted array).
  # Not adaptive (that is: if a given number of keys in the input array are presorted, this algorithm does not take advantage of the existing order to complete faster)
  # O(1) worst space complexity
  # O(n^2) worst/avg/best time complexity

# super simple testing, see benchmark.rb results
test1 = a.sort == sel_sort(a) ? "PASS" : "FAIL"
puts "#{test1}: selection_sort output matches #sort output."
