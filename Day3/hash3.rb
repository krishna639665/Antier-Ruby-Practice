

h1 = {'key1'=>'val1', 'key2'=>'val2', 'key3'=>'val3', 'key4'=>'val4'}
h2 = {'key1'=>'val1', 'KEY_TWO'=>'val2', 'key3'=>'VALUE_3', 'key4'=>'val4'}

p( h1.keys & h2.keys )      # set intersection (keys)  
p( h1.values & h2.values )  # set intersection (values)
p( h1.keys+h2.keys )       # concatenation
p( h1.values-h2.values )   # difference
p( (h1.keys << h2.keys)  ) #append
p( (h1.keys << h2.keys).flatten.reverse  ) # ‘un-nest’ arrays and reverse
