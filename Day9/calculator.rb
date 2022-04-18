class Calculator
  attr_accessor :input1, :input2

  def input_1()
    puts "Enter the first value.. "
    input1 = gets.chomp
    begin
      input1 = Float(input1)
    rescue ArgumentError, TypeError
      puts "Invalid input..\t Try agian.."
      input1 = input_1()
      return input1
    end
    return input1
  end

  def input_2()
    puts "Enter the second value.. "
    input2 = gets.chomp
    begin
      input2 = Float(input2)
    rescue ArgumentError, TypeError
      puts "Invalid input..\t Try agian.."
      input2 = input_2()
      return input2
    end
    return input2
  end

  def operation()
    puts "Enter the operation '+' '-' '*' '/' '%'  "
    operation = gets.chomp
    if !operation.match(/[+ % * -]/) && operation != "/"
      puts "invalid  operation.. \t try again.. "
      operation = operation()
      return operation
    end
    return operation
  end

  def add(input1, input2)
    puts "result = #{input1 + input2}"
  end

  def sub(input1, input2)
    puts "result = #{input1 - input2}"
  end

  def mul(input1, input2)
    # if input1 == 0
    #   puts "can not multiple 0 enter other number "
    #   input1 = input_1()
    # end
    # if input2 == 0
    #   puts "can not multiple 0 enter other number "
    #   input2 = input_2()
    # end

    puts "result = #{input1 * input2}"
  end

  def div(input1, input2)
    if input1 == 0
      puts "can not divide 0 enter other number "
      input1 = input_1()
    end
    if input2 == 0
      puts "can not divide 0 enter other number "
      input2 = input_2()
    end
    puts "result = #{input1 / input2}"
  end

  def mod(input1, input2)
    if input1 == 0
      puts "can not reminder 0 enter other number "
      input1 = input_1()
    end
    if input2 == 0
      puts "can not reminder 0 enter other number "
      input2 = input_2()
    end
    puts "result = #{input1 % input2}"
  end

  def calculation(operation, input1, input2)
    if operation == "+"
      add(input1, input2)
    elsif operation == "-"
      sub(input1, input2)
    elsif operation == "*"
      mul(input1, input2)
    elsif operation == "/"
      div(input1, input2)
    elsif operation == "%"
      mod(input1, input2)
    else
      puts "invalid operation.."
      operation = operation()
      calculation(operation, input1, input2)
    end
  end

  def input()
    puts "welcome to calculator.. "
    input1 = input_1()
    input2 = input_2()
    operation = operation()
    calculation(operation, input1, input2)
  end
end

ob = Calculator.new
t = ""
until t == "q"
  ob.input()
  puts "exit to enter q "
  t = gets.chomp
end
