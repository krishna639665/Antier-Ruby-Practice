class Methods2
  def set_name( aName )
    @myname = aName
  end
  def get_name
    return @myname
  end
  def talk
    return 'woof!'
  end

end
mydog = Methods2.new
mydog.set_name( 'Fido' )
puts(mydog.get_name)
puts(mydog.talk)
puts "Inspecting 1st treasure: #{mydog.inspect}"
