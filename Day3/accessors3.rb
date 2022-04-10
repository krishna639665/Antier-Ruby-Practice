class My
    # attr_reader :name, :class, :roll_no
    # attr_writer :name, :class, :roll_no
    attr_accessor :name, :class, :roll_no
end
t = My.new
t.name = "Akshay"
t.class = "b.sc"
t.roll_no = 10
puts "Name = #{t.name} \nClass  = #{t.class}\nRoll_no = #{t.roll_no}"