i =10
# one line until
puts( "until 1")
until i == 10 do puts(i) end # never executes
    puts( "\nuntil 2")
until i == 10 # do # never executes
	puts(i)
	i += 1  
end
puts( "\nuntil 4")
begin				 # executes once
	puts(i)
end until i == 10