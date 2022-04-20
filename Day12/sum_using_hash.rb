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
    hash = {}
    arr.each do |x|
      val = hash[x] ? hash[x]+1 : 1
      hash[x] = val
    end
    # puts(hash)
    sum = 0
    hash.each do |k,v|
        sum += k if v > 1
      end
    return sum
  end
end
  
ob = SumOfDublicateNumber.new
arr2 = ob.input()
intArray = arr2.to_s.split(//).map(&:to_i)
puts "sum of dublicate element = #{ob.check_sum_of_dublicate_element(intArray)}"
  