require './vihicle'
class Company < Vihicle
  def initialize( aName, aDescription, aValue )
    super(aName, aDescription)
    @value = aValue
  end
  def get_value
    return @value
  end
  def set_value(aValue)
    @value = aValue
  end
end
t1 = Company.new("Bike","Model 2022",5000)
t2 = Company.new("Car","Model 2022",10000)
puts "This is company1: #{t1.inspect}"
puts "This is company2: #{t2.inspect}"
puts "t1 name=#{t1.get_name}, description=#{t1.get_description}, value=#{t1.get_value}"
t1.set_value( 6000)
t1.set_description("Model 2023")
puts "t1 (NOW) name=#{t1.get_name}, description=#{t1.get_description}, value=#{t1.get_value}"

