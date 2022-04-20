class SumOfDublicateNumber
    def input
      puts "enter the number.."
      arr = gets.chomp
      arr = Integer(arr)
    rescue => e
      puts e.message + "\nEnter only integer.."
      retry
    end
  
    def check_sum_of_dublicate_element(arr)
      element = arr.find_all{ |e| arr.count(e)>1}
      element = element.uniq.sum
    end
end
  
  ob = SumOfDublicateNumber.new
  arr2 = ob.input()
  intArray = arr2.to_s.split(//).map(&:to_i)
  puts "sum of dublicate element = #{ob.check_sum_of_dublicate_element(intArray)}"
  