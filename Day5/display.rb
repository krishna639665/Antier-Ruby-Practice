class Display
  @@users_array = [
    { user_name: "jhon12", name: "john", acc_no: 12345 },

  ]
  attr_accessor :user_name, :name, :acc_no, :balance

  def initialize(balance)
    @balance = balance
  end

  def find_by_user_name(user_name)
    user_hash = @@users_array.detect { |user_hash| user_hash[:user_name] == user_name }
    user_hash ? make_instance(user_hash) : nil
  end

  def find_by_acc_no(acc_no)
    user_hash = @@users_array.detect { |user_hash| user_hash[:acc_no] == acc_no }
    user_hash ? make_instance(user_hash) : nil
  end

  def make_instance(user_hash)
    @@users_array << user_hash
  end

  def user_create(user_name, name, acc_no)
    user_hash = { user_name: user_name, name: name, acc_no: acc_no }
    @@users_array << user_hash
    make_instance(user_hash)
  end

  def acc_error
    return "Access denied.."
  end

  def amount
    puts "Input the amount"
    @money = gets.to_i
  end

  def over_error
    print "You don't own that kind of money, dude! Your balance: $#{@balance}"
  end

  def deposit
    @balance += amount
    puts "Deposited: $#{@money}. Updated balance: $#{@balance}."
  end

  def display_balance
    puts "Balance: $#{@balance}."
  end

  def withdraw
    if amount <= @balance
      @balance -= @money
      puts "Withdrew: $#{@money}. Updated balance: $#{@balance}."
    else
      puts over_error
    end
  end

  def login
    loop do
      puts "Enter username.."
      user_name = gets.chomp
      @user = find_by_user_name(user_name)
      unless @user
        puts "Username doesn't exist"
        account()
      else
        puts "Please enter your Account Number"
        acc_no = gets.chomp.to_i
        @user = find_by_acc_no(acc_no)
        unless @user
          puts "Account no. does not match.."
          account()
        end
      end
      access()
    end
  end

  def create
    puts "Enter your userName.."
    user_name = gets.chomp
    puts "Enter your Name.."
    name = gets.chomp
    puts "Enter Your Account Number"
    acc_no = gets.chomp
    begin
      acc_no = Integer(acc_no)
    rescue ArgumentError, TypeError
      puts "Invalid input..\t Try agian.."
      account()
    end

    @user = user_create(user_name, name, acc_no)
    puts "Thank you for making an account.."
    access()
  end

  def access
    i = 1
    while i < 2
      #puts "Welcome to your Bank, #{user_name}!\n"
      puts "1: deposit ammount..\n2: to withdraw ammount..\n3: cheack balance..\n4: logout"
      x = gets.chomp.to_i
      case x
      when 1
        deposit
      when 2
        withdraw
      when 3
        display_balance
      when 4
        account()
      else
        puts "Worng entry try again.."
      end
      puts " to continue enter 1"
      i = gets.chomp.to_i
    end
  end

  def account
    puts "welcome to your bank.."
    loop do
      puts "1: Create Account..\n2: Login Account..\n3: Logout"
      x = gets.chomp.to_i
      case x
      when 1
        create
      when 2
        login
      when 3
        exit
      else
        puts "worng enter try again.."
      end
    end
    puts "Thank you..."
  end
end

ob = Display.new(10000)
ob.account
