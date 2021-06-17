require 'benchmark'

def naive_solution(arr)
  for elem in arr
    return true if elem == 42
  end

  false
end

arr_3 = (1..1000).map      { 5 }
arr_4 = (1..10000).map     { 5 }
arr_5 = (1..100000).map    { 5 }
arr_6 = (1..1000000).map   { 5 }
arr_7 = (1..10000000).map  { 5 }
arr_8 = (1..100000000).map { 5 }

Benchmark.bm(9) do |x|
  x.report("N = 10^3") { naive_solution(arr_3) }
  x.report("N = 10^4") { naive_solution(arr_4) }
  x.report("N = 10^5") { naive_solution(arr_5) }
  x.report("N = 10^6") { naive_solution(arr_6) }
  x.report("N = 10^7") { naive_solution(arr_7) }
  x.report("N = 10^8") { naive_solution(arr_8) }
end
