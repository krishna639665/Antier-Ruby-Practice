class My
  @@users = [{ username: "cat", password: 123 },
             { username: "cat2", password: 12 },
             { username: "cat3", password: 23 },
             { username: "cat4", password: 1234 },
             { username: "cat5", password: 4556 },
             { username: "cat6", password: 578 }]

  def check()
    puts "enter user name "
    u_name = gets.chomp
    puts "enter password.."
    u_password = gets.chomp
    @@users.each do |user|
      if user[:username] == u_name && user[:password] == u_password.to_i
        return true
      end
    end
    return false
  end
end

ob = My.new
a = ob.check()
if a
  puts "validate"
else
  puts "not validate"
end
