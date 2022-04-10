module Con
    def a1
        puts "This is a1"
    end
    def a2
        puts "This is a2"
    end
    def a3
        puts "this is a3"
    end
end
include Con
puts(a2)