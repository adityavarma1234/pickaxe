# variable length methods.

def varargs(arg1, *rest)
  "arg1={arg1}. rest=#{rest.inspect}"
end

puts varargs("one")
puts varargs("one", "two")
puts varargs("one", "two", "three")

def split_apart(first, *splat, last)
  "First: #{first.inspect}, splat:   #{splat.inspect}, last: #{last.inspect}"
end

puts split_apart(1,2)
puts split_apart(1,2,3)
puts split_apart(1,2,3,4)

# Methods and Blocks


def double(p2)
  yield(p2*2)
end

double(3) {|val| puts "I got #{val}"}
double("tom") {|val| puts "Then I got #{val}"}

# Storing a block and using it later, last parameter is prefixed with apersand & any associated block is
# converted into proc object and that object is assigned to the parameter

class TaxCalculator
 def initialize(name, &block)
   @name , @block = name, block
 end

 def get_tax(amount)
   "#{@name} on #{amount} = #{@block.call(amount)} "
 end
end

tc = TaxCalculator.new("Sales tax") {|amt| amt * 0.075}

p tc.get_tax(100)
p tc.get_tax(250)
