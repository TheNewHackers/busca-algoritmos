require 'benchmark'

def built_in_binary_search(arr)
  !arr.bsearch { |elem| 42 - elem }.nil?
end

arr_3 = (1..1_000).to_a
arr_4 = (1..10_000).to_a
arr_5 = (1..100_000).to_a
arr_6 = (1..1_000_000).to_a
arr_7 = (1..10_000_000).to_a
arr_8 = (1..100_000_000).to_a

Benchmark.bm(9) do |x|
  x.report("N = 10^3") { built_in_binary_search(arr_3) }
  x.report("N = 10^4") { built_in_binary_search(arr_4) }
  x.report("N = 10^5") { built_in_binary_search(arr_5) }
  x.report("N = 10^6") { built_in_binary_search(arr_6) }
  x.report("N = 10^7") { built_in_binary_search(arr_7) }
  x.report("N = 10^8") { built_in_binary_search(arr_8) }
end
