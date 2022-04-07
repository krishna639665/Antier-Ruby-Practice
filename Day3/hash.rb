number = [1,3,4,5,7,8]
number.each do
    |n|
puts "#{n}"
    
end

hash = { bacon: 300, coconut: 200 }
hash.each do
    |key,value|
     puts "#{key} price is #{value}"
 end
 animals = ["cat", "dog", "tiger"]
 animals.each_with_index { 
     |animal, idx| puts "We have a #{animal} with index #{idx}" 
    }