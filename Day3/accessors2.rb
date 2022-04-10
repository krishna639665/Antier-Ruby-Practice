class My
    attr_reader :name
    attr_writer :name
    attr_reader :descriptions
    attr_writer :descriptions

    def initialize(aName, aDescription)
        @name = aName
        @descriptions = aDescription
    end
end
class You < My
    attr_accessor :value
    def initialize(aName, aDescription)
        super(aName, aDescription)
    end
end
ob= You.new("Hary", "this is hary")
ob2 = You.new("Potter","this is potter")
ob.value = 100
ob2.value=200
puts "t1 name = #{ob.name}, description = #{ob.descriptions}, value = #{ob.value}"
puts(ob.inspect)
puts "t2 name = #{ob2.name}, description = #{ob2.descriptions}, value = #{ob2.value}"
