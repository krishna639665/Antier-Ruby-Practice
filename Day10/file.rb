#File.new("input.txt")
afile = File.new("input.txt", "w+")
if afile
  read = afile.syswrite("hello")
  puts read
else
  puts "file can not open"
end
a = File.open("input.txt", "r")
if a
  read = a.sysread(20)
  puts read
else
  puts " file can not open"
end
