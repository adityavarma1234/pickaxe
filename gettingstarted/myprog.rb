puts "Hello Ruby Programmer"
puts "It is now #{Time.now}"

def say_goodnight(name)
	result = "Good night, #{name.capitalize}"
	return result
end

puts say_goodnight("Aditya_varma")

puts "And good night, \nMom"

a = [1, "cat", 3.14]
puts "The first element is #{a[0]}"

a[2] = nil
puts "The array is now #{a.inspect}"

a = ['ant', 'bee', 'cat', 'dog', 'elk']
puts a[0]
puts a[3]

# this is the same:
a = %w{ant bee cat dog elk}
puts a[0]
puts a[3]

inst_section = {
	'cello': 'string',
	'clarinet': 'woodwind',
	'drum': 'percussion',
	'oboe': 'woodwind',
	'trumpet': 'brass',
	'violin': 'string'
}

p inst_section[:oboe]
p inst_section['cello']
p inst_section['bassoon']

def call_method
	puts "Start of method"
	yield 
	yield
	puts "End of method"
end

call_method {puts "In the Block" }

def who_says_what
	yield("Dave", "hello")
	yield("Andy", "goodbye")
end

who_says_what {|person, phrase| puts "#{person} says #{phrase} " }

animals = %w(ant bee cat dog)
animals.each {|animal| puts animal}
