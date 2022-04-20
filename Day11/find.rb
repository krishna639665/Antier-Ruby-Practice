class SumDublicate   
    def function(arr)
        sum=0
        for i in (0..arr.length-1)
            j = i+1
            for k in (j..arr.length-1)
                # puts("i = #{arr[i]} j = #{arr[k]}")
                if(arr[i] == arr[k])
                    sum+=arr[k]
                    arr[k] = 0
                    break
                end
            end
        end 
        return sum  
    end
end
ob = SumDublicate.new
puts "enter the number.."
#arr = Array.new
arr = gets.chomp
a = arr.split(//)
intArray = []
for n in a
    intArray.push(n.to_i)
end
#intArray = ob.input()
b= ob.function(intArray)
puts "sum of =  #{b}"