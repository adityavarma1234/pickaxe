# define <=> and get six methods for free by including comparable module
class Person
  include Comparable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "#{@name}"
  end

  def <=>(other)
    self.name <=> other.name
  end
end

p1 = Person.new("Matz")
p2 = Person.new("Guido")
p3 = Person.new("Larry")

if p1 > p2
  puts "#{p2.name}'s name > #{p1.name}'s name"
end

# Sort an array of Person's Objects

puts "Sorted List"
puts [p1, p2, p3].sort
