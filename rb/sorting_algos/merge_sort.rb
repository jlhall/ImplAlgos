# a = sample array of size (n)
n_sample = rand(1..100)
a = (1..n_sample).to_a.shuffle
expect_output = a.sort

# Stitch subroutine
def stitch(left, right)
  results = []
  while left.size > 0 && right.size > 0
    if left[0] <= right[0]
      results.push(left.shift)
    else
      results.push(right.shift)
    end
  end

  return results.concat(left).concat(right)
end

# Merge Sort
def merge_sort(arr)
  return arr if arr.size <= 1
  left = arr.slice(0, arr.size / 2)
  right = arr.slice(arr.size / 2, arr.size)
  return stitch(merge_sort(left), merge_sort(right))
end

# Merge sort is very predictable, and therefore highly valued (establishing known quantities is worthwhile when evaluating tradeoffs in comp sci). If space isn't a huge concern, or rather, if using O(n) extra space isn't an issue, it's a great choice, and easy to implement. 
# It is the only stable n lg n sorting algo. Even when sorting linked lists, merge sort only requires lg n extra space for recursion. It is the algorithm of choice for most situations, and finds a home in many sorting implementation, unless dealing with certain Types/or with certain tradeoffs for a given situation. Merge sort algorithms even have in place linear time variants for the final algo. steps, but they are usually not justified due to high cost and complexity (unless O(n) extra space isn't available, then they become valuable)

# Key properties:
  # Stable (that is: two keys in the input array with equal values remain in the same order in the output/sorted array).
  # Not adaptive (that is: if a given number of keys in the input array are presorted, this algorithm cannot take advantage of the existing order to complete faster)
  # O(n) worst space complexity (O(lg(n)) for linked lists)
  # Ω(n lg n) time complexity

# super simple testing, see benchmark.rb results
test1 = a.sort == merge_sort(a) ? "PASS" : "FAIL"
puts "#{test1}: merge_sort output matches #sort output."