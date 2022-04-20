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
    element = Array.new
    arr.each do |i|
      (i+1..arr.length - 1).each do |j|
         puts("i ==#{i} j==#{j}")
        if arr[i] == arr[j]
          element.push(arr[j])
          # break
        end
      end
    end
    print element
    element = element.uniq.sum
  end
end

ob = SumOfDublicateNumber.new
arr2 = ob.input()
intArray = arr2.to_s.split(//).map(&:to_i)
puts "sum of dublicate element = #{ob.check_sum_of_dublicate_element(intArray)}"
