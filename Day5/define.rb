x =  1
Height = 100
puts ("defined operator in Ruby")
puts defined? x               # "local-variable"
puts defined? 12              # "expression"
puts defined? y               # nil
puts defined? puts            # "method"
puts defined? Height          # "constant"
puts defined? $&              # nil
puts defined? $_              # "global-variable"
puts defined? Math::PI        # "constant"
puts defined?( c = 22 )       # "assignment"
puts defined? 12.abs          # "method"
