# a = sample array of size (n)
n_sample = rand(1..100)
a = (1..n_sample).to_a.shuffle
expect_output = a.sort

def bub_sort(arr)
  for i in (0..arr.size-1)
    for j in (arr.size-1).downto(i+1)
      (arr[j], arr[j-1] = arr[j-1], arr[j]) if arr[j] < arr[j-1]
    end
  end
  return arr
end

# Bubble sort is similar to insertion sort, but takes at least 2 passes to sort data (nearly sorted data at that)...insertion sort takes about 1

# Key properties:
  # Stable (that is: two keys in the input array with equal values remain in the same order in the output/sorted array).
  # Adaptive, when nearly sorted (that is: if a given number of keys in the input array are presorted, this algorithm can take advantage of the existing order to complete faster)
  # O(1) worst space complexity
  # O(n^2) worst/avg time complexity
  # Ω(n) best time complexity (when nearly sorted)
  # Note the key properties are extremely similar to insertion sort

# super simple testing, see benchmark.rb results
test1 = a.sort == bub_sort(a) ? "PASS" : "FAIL"
puts "#{test1}: bubble_sort output matches #sort output."
