
require_relative 'module3.rb'
require_relative 'module4.rb'
class FunCon
    include Con
    include Fun
    def b1
        puts "this is b1"
    end
    def b2
        puts "this is b2"
    end
end
ob = FunCon.new
include Con
a1
ob.a3
ob.c2
ob.c3
ob.b1
ob.b2

