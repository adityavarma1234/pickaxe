# BLOCK

# A ruby iterator is simply a method that can invoke a block of code
def two_times
  yield
  yield
end

two_times { puts "Hello" }

def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1 + i2
  end
end

fib_up_to(1000) {|f| print f, " "}

# COLLECT OR MAP

# collect or map returns takes each element from collection and passes it into block.
# Resulst returned from the block are used to construct a new array
puts ["H", "A", "L"].collect { |x| x.succ }


# INJECT
# inject lets you accumulate a value across the members of a collection
puts [1, 3, 5, 7].inject(0) { |sum, element| sum + element }
puts [1, 3, 5, 7].inject(1) { |product, element| product * element }
# The first time the block is called, sum is set to injects parameters, and element is set to the first element in the collection
# The second and subsequent times the block is called, sum is set to the value returned by the block on the previous call.
# If inject has no parameter then it uses the first element of the collection as the initial value and starts the iteration with the second value
puts [1, 3, 5, 7].inject {|sum, element| sum + element}
puts [1, 3, 5, 7].inject {|product, element| product * element}
# we can also give it the name of the method we want to apply to successive elements of the collectio
puts [1, 3, 5, 7].inject(:+)
puts [1, 3, 5, 7].inject(:*)

# ENUMERATORS EXTERNAL ITERATORS
# difficult to iterate over parallel collections using ruby internal iterator scheme
# Passing an iterator into a method that needs to access each of the values returned by the iterator
a = [1, 3, 'cat']
h = { dog: "canine", fox: "vulpine" }

enum_a = a.to_enum
enum_h = h.to_enum

puts enum_a.next
puts enum_h.next
puts enum_a.next
puts enum_h.next

# most of internal iterators method the one that normally yields successive values to a block will also return enumerator object without a block
a = [1, 3, 'cat']
enum_a = a.each

puts enum_a.next
puts enum_a.next

# loop method invokes its block repeatedly breaks when some condition occurs

short_enum = [1, 2, 3].to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum. next} - #{long_enum.next}"
end
