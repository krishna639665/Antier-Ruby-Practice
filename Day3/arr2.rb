
multiarr = [['one','two','three','four'],[1,2,3,4]]
for i in multiarr
    puts(i.inspect)
end
puts( "\nfor a, b, c, d in.. (multi-dimensional array)" )
for (a,b,c,d) in multiarr
	print("a=#{a}, b=#{b}, c=#{c}, d=#{d}\n" )
end