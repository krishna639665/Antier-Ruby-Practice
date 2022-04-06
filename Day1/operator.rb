# frozen_string_literal: true

a = gets.chomp.to_i
if a > 10 && a < 20
  puts "#{a} grater then 10."
elsif a == 10
  puts "#{a} equal to 10."
elsif a >= 50 && a <= 60
  puts "#{a} equal t0 #{a}"
else
  puts "#{a} smaller then 10."
end
