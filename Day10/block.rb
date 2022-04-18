def test()
  puts "this is first line.."
  yield
  puts "this is second line.."
  yield
end

def ram()
  puts " this is ram"
  yield
  puts "after ram "
end

#test { puts " this is block.." }
ram { puts "this is second block.. " }
