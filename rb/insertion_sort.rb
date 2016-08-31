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

# super simple testing, will add .benchmark results after adding more implementations
test1 = a.sort == ins_sort(a) ? "pass" : "fail"
puts "Algorithm output matches built in #sort output:" + " #{test1}"
