# frozen_string_literal: true
class First
    @@no_of_states=0
    def ram(name)
      @states = name
      @@no_of_states +=1
    end
    def display
      puts "hello : #{@states}"
    end


    def total_no_of_states
      puts "Total number of states written: #@@no_of_states"
    end

  ob=First.new
  ob1 = First.new
  ob2 = First.new
  ob.ram("krishna")
  ob1.ram("kumar")
  ob2.ram( "hii")
    ob.display

  ob.total_no_of_states
  ob1.total_no_of_states
  ob2.total_no_of_states
end