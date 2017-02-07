# each variable holds reference to an object

person = "Tim"

puts "The object in person is a #{person.class}"
puts "The object in person has an id #{person.object_id}"
puts "and a value of #{person}"

person1 = "Tim"
person2 = person1
person1[0] = 'J'

puts "person1 is #{person1}"
puts "person2 is #{person2}"

person1 = "Tim"
person2 = person1.dup
person1[0] = "J"
puts "person1 is #{person1}"
puts "person2 is #{person2}"

person1 = "Tim"
person2 = person1
person1.freeze
person2[0] = "J"
