class Methods
  def sum(a,b)
    puts "Sum of two number : #{a+b}"
  end
  def return_div(a,b)
    c=a/b
    return c
  end
  def mul(a,b)
    c = a*b
    return c
  end
  puts "Enter the two number.."
  a= gets.chomp.to_i
  b= gets.chomp.to_i
  ob = Methods.new
  ob.sum(a,b)
  c = ob.return_div(a,b)
  puts "Division of two number : #{c}"
  puts "Multiply of two number : #{ob.mul(a,b)}"

end
