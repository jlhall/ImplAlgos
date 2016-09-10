require 'benchmark'
require_relative 'insertion_sort'
require_relative 'selection_sort'
require_relative 'bubble_sort'
require_relative 'shell_sort'
require_relative 'merge_sort'
print "\n"

# a = sample array of size (n)
n_sample = rand(2..10000)
a = (1..n_sample).to_a.shuffle
expect_output = a.sort
print "Test Array Size: #{a.length}\n"
print "\n"

Benchmark.bmbm do |x|
  x.report("#sort:") {a.sort}
  x.report("#sort!:") {a.sort!}
  x.report("#ins_sort:") {ins_sort(a)}
  x.report("#sel_sort:") {sel_sort(a)}
  x.report("#bub_sort:") {bub_sort(a)}
  x.report("#shell_sort:") {shell_sort(a)}
  x.report("#merge_sort:") {merge_sort(a)}
end