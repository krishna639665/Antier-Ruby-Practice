Benchmark.bm do |x|
  x.report("ITRATING THROUGH AN ARRAY USING EACH LOOP") { 
      $array.each do |i|
          if(i == 100)
              puts("  ==Found the element #{i}")
          end
      end
  }

  x.report("ITRATING THROUGH AN ARRAY USING EACH_WITH_OBJECT LOOP") { 
      $array.each_with_object({}) do |i, hash|
          if($array[i] == 100)
              hash[i] = $array[i]
              puts("insex of the element and the element #{hash}")
          end
          
      end
  }
  
  x.report("ITRATING THROUGH AN ARRAY USING EACH_WITH_INDEX LOOP") { 
      $array.each_with_index do |i, index|
          if($array[index] == 100)
              puts("  ==Found the element at the index #{index} #{i}")
          end
      end
  }
  x.report("ITRATING THROUGH AN ARRAY USING MAP") { 
      $array.map do |i|
          if(i == 100)
              puts("  ==Found the element  #{i}")
          end
      end
  }
  
  x.report("ITRATING THROUGH AN ARRAY USING FIND") { 
      $array.find do |i|
          if(i == 100)
              puts("  ==Found the element  #{i}")
          end
      end
  }
  
  x.report("ITRATING THROUGH AN ARRAY USING FIND_ALL") { 
      $array.find_all do |i|
          if(i == 100)
              puts("  ==Found the element  #{i}")
          end
      end
  }
  
  x.report("ITRATING THROUGH AN ARRAY USING FIND_ALL") { 
      $array.select do |i|
          if(i == 100)
              puts("  ==Found the element  #{i}")
          end
      end
  }
  
  x.report("ITRATING THROUGH AN ARRAY USING FOR LOOP") { 
      for i in (0..$array.length-1)
          if($array[i] == 100)
              puts("  ==Found the element  #{i}")
          end
      end 
  }

  x.report("ITRATING THROUGH AN ARRAY USING WHILE LOOP") { 
      i = 0
      while i < $array.length
          if($array[i] == 100)
              puts("  ==Found the element #{i}")
          end
          i+=1    
      end 
  }

  x.report("ITRATING THROUGH AN ARRAY USING UNTIL LOOP") { 
      i = 0
      until i == $array.length-1
          if($array[i] == 100)
              puts("  ==Found the element #{i}")
          end
          i+=1 
      end
  }

  x.report("ITRATING THROUGH AN ARRAY USING INCLUDE") { 
      if ($array.to_set.include?(100))
          puts("  ==Found the element in the array")
      end
  }

  x.report("ITRATING THROUGH AN ARRAY USING UNLESS LOOP") { 
      i = 0
      unless i >= $array.length-1
          if($array[i] == 100)
              puts("  ==Found the element #{i}")
          end
          i+=1
      end 
  }
end