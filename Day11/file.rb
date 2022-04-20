afile = File.open("input.txt")
if afile
    arr = IO.readlines("input.txt")
    puts arr
else
    puts "file does not exit .."
end

