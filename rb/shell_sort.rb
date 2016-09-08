# a = sample array of size (n)
n_sample = rand(1..100)
a = (1..n_sample).to_a.shuffle
expect_output = a.sort

def shell_sort(a)
    gap = a.size/2
    while gap > 0
      for j in gap...a.size
        curr = a[j]
        i = j
        while (i >= gap and a[i-gap] > curr)
          a[i] = a[i-gap]
          i -= gap
        end
        a[i] = curr
      end
      gap /= 2
    end
    a
  end

# Shell sort is based off of insertion sort, inheriting its adaptive properties, although it isn't normally as dramatic due to the full loop per increment. Shell sort has low overhead, is simple to implement and has sub-quadratic time complexity, so it may be a decent alternative if the data sorted is not large and is already pre-sorted to some degree.

# Key properties:
  # Not stable (that is: two keys in the input array with equal values do not remain in the same order in the output/sorted array).
  # Adaptive, when nearly sorted (that is: if a given number of keys in the input array are presorted, this algorithm can take advantage of the existing order to complete faster)
  # O(1) worst space complexity
  # O(n^2) worst/avg time complexity
  # Ω(n lg(n)) best time complexity

# super simple testing, see benchmark.rb results
test1 = a.sort == shell_sort(a) ? "PASS" : "FAIL"
puts "#{test1}: shell_sort output matches #sort output."