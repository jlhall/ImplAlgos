# a = sample array of size (n)
n_sample = rand(1..100)
a = (1..n_sample).to_a.shuffle
expect_output = a.sort

def quick_sort(a)
  return a if a.size <= 1
  pivot = a.shuffle.shift
  left, right = a.partition { |b| b < pivot}
  return quick_sort(left).concat(quick_sort(right))
end

# Can be decent when implemented with care, and generally has low overhead; making it a good general purpose sort when stability isn't needed. Multiple implementation versions using dual and even tri-partition approaches exist in addition to single pivot, mostly to handle duplicate and other types of input better.

# Key properties:
  # Not stable (that is: two keys in the input array with equal values may not necessarily remain in the same order in the output/sorted array).
  # Not adaptive (that is: if a given number of keys in the input array are presorted, this algorithm does not take advantage of the existing order to complete faster)
  # O(lg n) worst space complexity
  # O(n^2) worst time, but avg O(n lg n) time complexity

# super simple testing, see benchmark.rb results
test1 = a.sort == quick_sort(a) ? "PASS" : "FAIL"
puts "#{test1}: quick_sort output matches #sort output."