# a = sample array of size (n)
n_sample = rand(1..100)
a = (1..n_sample).to_a.shuffle
expect_output = a.sort

# insertion sort
def ins_sort(arr)
  result = [arr[0]]
  arr.delete_at(0)
  # grab pivot value and remove it from main array
  for i in arr
    index = 0
    while index < result.length
      if i <= result[index]
        result.insert(index, i)
        break
      elsif index == result.length-1
        result.insert(index+1, i)
        break
      end
      index+=1
    end
  end
  return result
end

# Very basic sorting method with O(n^2) worst-case time
# Why use? Insertion sort is adaptive (when mostly sorted) and stable, and works well with small problems!!! 

# Key properties:
  # Stable (that is: two keys in the input array with equal values remain in the same order in the output/sorted array).
  # Adaptive, when nearly sorted (that is: if a given number of keys in the input array are presorted, this algorithm can take advantage of the existing order to complete faster)
  # O(1) worst space complexity
  # O(n^2) worst/avg time complexity
  # Ω(n) best time complexity
  # Also note that generally insertion sort has extremely low overhead, so the cost of implementation is minimal/often trivial

# super simple testing, see benchmark.rb results
test1 = a.sort == ins_sort(a) ? "PASS" : "FAIL"
puts "#{test1}: insertion_sort output matches #sort output."
