require 'benchmark'

def binary_search(arr, l, r)
  return false if l > r

  mid     = (l + r)/2
  current = arr[mid]

  if current == 42
    return true
  elsif current < 42
    l = mid + 1
  else
    r = mid - 1
  end

  binary_search(arr, l, r)
end

def solve(arr)
  l = 0
  r = arr.length - 1
  binary_search(arr, l, r)
end

arr_3 = (1..1_000).to_a
arr_4 = (1..10_000).to_a
arr_5 = (1..100_000).to_a
arr_6 = (1..1_000_000).to_a
arr_7 = (1..10_000_000).to_a
arr_8 = (1..100_000_000).to_a

Benchmark.bm(9) do |x|
  x.report("N = 10^3") { solve(arr_3) }
  x.report("N = 10^4") { solve(arr_4) }
  x.report("N = 10^5") { solve(arr_5) }
  x.report("N = 10^6") { solve(arr_6) }
  x.report("N = 10^7") { solve(arr_7) }
  x.report("N = 10^8") { solve(arr_8) }
end
