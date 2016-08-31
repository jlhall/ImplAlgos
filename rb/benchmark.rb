require 'benchmark'
require_relative 'insertion_sort'

# a = sample array of size (n)
n_sample = rand(1..1000)
a = (1..n_sample).to_a.shuffle
expect_output = a.sort

Benchmark.bmbm do |x|
  x.report("#sort:") {a.sort}
  x.report("#sort!:") {a.sort!}
  x.report("#ins_sort:") {ins_sort(a)}
end