arr = [2,1,1,2,3,3,5,3]
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

puts(sum)