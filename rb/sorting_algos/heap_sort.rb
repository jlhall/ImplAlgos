# a = sample array of size (n)
n_sample = rand(1..100)
a = (1..n_sample).to_a.shuffle
expect_output = a.sort

def sortdown(a, start, finish)
  base = start
  loop do
    child = base * 2 + 1
    break if child > finish
    if child + 1 <= finish && a[child] < a[child+1]
      child +=1
    end
    if a[base] < a[child]
      a[base], a[child] = a[child], a[base]
      base = child
    else
      break
    end
  end
end

def heap_sort(a)
  ((a.size - 2) / 2).downto(0) do |start|
    sortdown(a, start, a.size - 1)
  end

  (a.size - 1).downto(1) do |finish|
    a[finish], a[0] = a[0], a[finish]
    sortdown(a, 0, finish - 1)
  end
  return a
end

# Heap sort is simple to implement and can perform in place sorting at O(n lg n). Space can vary based on tail recursion in the helper method vs. iteration, yielding O(lg n) space or O(1), respectively. Not truly adaptive.

# Key properties:
  # Not stable (that is: two keys in the input array with equal values do not necessarily remain in the same order in the output/sorted array).
  # Not adaptive (that is: if a given number of keys in the input array are presorted, this algorithm cannot take advantage of the existing order to complete faster)
  # O(1)/O(lg n) space complexity
  # O(n lg n) time complexity

# super simple testing, see benchmark.rb results
test1 = a.sort == heap_sort(a) ? "PASS" : "FAIL"
puts "#{test1}: heap_sort output matches #sort output."
