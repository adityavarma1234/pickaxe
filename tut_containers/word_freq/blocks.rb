# a block is a chunk of code enclosed between either braces or do and end
sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square
end
puts sum

# scopes of variables in block
value = "some value"
[1, 2].each {|value| puts value}
puts value

# we can define a block variable by putting a semicolon in the blocks parameters list
square = "some shape"
sum = 0
[1, 2, 3, 4].each do |value; square|
  square = value * value  # this is a different value than some shape
  sum += square
end

puts sum
puts square
# by making square block local value assigned inside the block will not affect the value of the variable with the same name in outer space
