class Display
  # @@isAccount = false
  @@name = 0
  @@users_array = [
    { user_name: "jhon12", name: "john", acc_no: 12345, balance: 10000 },
    { user_name: "ram12", name: "ram", acc_no: 852, balance: 10000 },

  ]
  attr_accessor :user_name, :name, :acc_no, :balance

  def find_by_user_name(user_name)
    q = false
    @@users_array.each do |hash|
      if hash.has_key?(:user_name)
        if hash[:user_name] == user_name
          q = true
        end
      end
    end
    q
  end

  def find_by_acc_no(acc_no)
    q = false
    @@users_array.each do |hash|
      if hash.has_key?(:acc_no)
        if hash[:acc_no] == acc_no
          q = true
        end
      end
    end
    q
  end

  def check_login_user_balance
    @@users_array.each do |hash|
      if hash.has_key?(:user_name)
        if hash[:user_name] == @@name
          xx = hash[:balance]
          return (xx.to_i)
        end
      end
    end
  end

  def update_balance(balance)
    @@users_array.each do |hash|
      if hash.has_key?(:user_name)
        if hash[:user_name] == @@name
          hash[:balance] = balance
          break
        end
      end
    end
  end

  def update_balance_to_withdraw_user(acc_no, user_balance)
    @@users_array.each do |hash|
      if hash.has_key?(:acc_no)
        if hash[:acc_no] == acc_no
          hash[:balance] = user_balance
          break
        end
      end
    end
  end

  def find_withdraw_user(acc_no)
    @@users_array.each do |hash|
      if hash.has_key?(:acc_no)
        if hash[:acc_no] == acc_no
          xx = hash[:balance]
          return (xx.to_i)
        end
      end
    end
  end

  def user_create(user_name, name, acc_no, balance)
    user_hash = { user_name: user_name, name: name, acc_no: acc_no, balance: balance }
    @@users_array << user_hash
  end

  def over_error
    print "You don't own that kind of money, dude! Your balance: $#{check_login_user_balance()}"
  end

  def deposit
    balance = check_login_user_balance()
    puts "Input the amount"
    money = gets.chomp.to_i

    balance += money
    update_balance(balance)
    puts "Deposited: $#{@money}. Updated balance: $#{check_login_user_balance()}."
  end

  def display_balance
    balance = check_login_user_balance()
    puts "Balance is : $#{balance}"
  end

  def amount
    puts "Input the amount"
    @money = gets.chomp.to_i
  end

  def withdraw
    puts "Enter the account number to transfer money.."
    acc_no = gets.chomp.to_i
    # if !(acc_no.match(/[0-9]/))
    #   puts "Invalid input..\t Try agian.."
    #   access()
    # end
    user = find_by_acc_no(acc_no)
    if !user
      puts "Account no. does not match.."
      account()
    else
      user_balance = find_withdraw_user(acc_no)
      balance = check_login_user_balance()
      puts "Input the amount"
      money = gets.chomp.to_i
      if money <= balance
        balance -= money
        user_balance += money
        update_balance(balance)
        update_balance_to_withdraw_user(acc_no, user_balance)
        puts "Withdrew: $#{money}. Updated balance: $#{check_login_user_balance()}."
      else
        puts over_error
      end
    end
  end

  def login
    loop do
      puts "Enter username.."
      user_name = gets.chomp
      @@name = user_name
      user = find_by_user_name(user_name)
      if !user
        puts "Username doesn't exist"
        account()
      else
        puts "Please enter your Account Number"
        acc_no = gets.chomp.to_i
        user = find_by_acc_no(acc_no)
        if !user
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
    @@name = user_name
    puts "Enter your Name.."
    name = gets.chomp
    if (name.match(/[^a-zA-Z]/))
      puts "\nInvalid input..\t Try agian.."
      account()
    end

    puts "Enter Your Account Number"
    acc_no = gets.chomp
    if !(acc_no.match(/\d/))
      puts "Invalid input..\t Try agian.."
      account()
    end

    balance = 10000
    @user = user_create(user_name, name, acc_no, balance)
    puts "Thank you for making an account.."
    access()
  end

  def access
    i = 1
    while i < 2
      puts "\n----Welcome to your Bank, #{@@name}!----\n"
      puts "\n1: deposit ammount..\n2: withdraw to another account..\n3: cheack balance..\n4: logout"
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
      puts " To continue enter 1"
      i = gets.chomp.to_i
    end
  end

  def account
    puts "\n----welcome to your bank..----"
    loop do
      puts "1: Create Account..\n2: Login Account..\n3: Exit"
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

ob = Display.new()
ob.account
