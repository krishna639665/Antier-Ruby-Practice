require 'benchmark'

$array = [2,4,6,7,8,9,10,11,12,13,14,100,200]

Benchmark.bm do |x|
  
  x.report("each") {
    arr = []
    $array.each do |i|
      arr.push(i*2)
    end
    print arr 
  }

  x.report("each_with_index") { 
    arr = []
    $array.each_with_index do  |x,index| 
      arr[index] = x*2
    end 
    print arr  
  }

  x.report("each_with_object") {
    arr = []
    $array.each_with_object(arr) do |x, arr|
      arr << x*2
    end
    print arr
  }
  x.report("map") {
    arr = []
    $array.map do |x| 
      arr << x*2
    end
    print arr
  }
  x.report("find"){
    arr = []
    $array.find do |i|
      arr << i*2
    end
    print arr
  }
  x.report("find_all"){
    arr = []
    $array.find_all do |i|
      arr << i*2
    end
    print arr
  }
  x.report("select"){
    arr = []
    $array.select do |i|
      arr << i*2
    end
    print arr
  }
  x.report("for"){
    arr = []
    for i in (0..$array.length-1)
      arr << i*2
    end
    print arr
  }
  x.report("while"){
    arr = []
    i = 1
    while i < $array.length
      arr << i*2
      i += 1
    end
    print arr
  }
  x.report("until"){
    arr = []
    i = 1
    until i == $array.size
      arr << i*2
      i += 1
    end
    print arr 
  }
  x.report("unless"){
    unless ($array.include?(10000))
      print("==> Found the element in the array")
    end 
  }
  x.report("include"){
    if  ($array.include?(100))
      print("==> Found the element in the array")
    end
  }


end