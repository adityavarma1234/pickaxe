# Assignment to an element is implemented using the []= method. This method receives each object passed as an index as its first n parameters and the value of the assignment as its last parameter


class SomeClass
  def []=(*params)
    value = params.pop
    puts "Indexed with #{params.join(',')}"
    puts "value = #{value.inspect}"
  end
end

s = SomeClass.new
s[1] = 2
s['cat', 'dog'] = 'enemies'

