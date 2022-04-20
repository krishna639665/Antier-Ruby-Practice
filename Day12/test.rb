class SumOfDublicateNumber
    def input
      puts "enter the number.."
      arr = gets.chomp
      arr = Integer(arr)
    rescue ArgumentError, TypeError
      puts "Invalid input..\t Try agian.."
      retry
    end
  
    def check_sum_of_dublicate_element(arr)
      element = Array.new
      for i in (0..arr.length - 1)
        j = i + 1
        for k in (j..arr.length - 1)
          if arr[i] == arr[k]
            element << arr[k]
            arr[k] = 0
            break
          end
        end
      end
      element = element.uniq.sum
    end
end
  
  ob = SumOfDublicateNumber.new
  arr2 = ob.input()
  intArray = arr2.to_s.split(//).map(&:to_i)
  result = ob.check_sum_of_dublicate_element(intArray)
  puts "sum of dublicate element = #{result}"