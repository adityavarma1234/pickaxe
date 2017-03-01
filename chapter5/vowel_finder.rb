module Summable
  def sum
    inject(:+)
  end
end

class Array
  include Summable
end

class Range
  include Summable
end

class VowelFinder
  include Enumerable
  include Summable

  def initialize(string)
    @string = string
  end
  def each 
    @string.scan(/[aeiou]/) do |vowel|
      yield vowel
    end
  end
end

vf = VowelFinder.new("the quick brown fox jumped")
puts vf.inject(:+)  
puts [1,2,3,4,5].sum
puts vf.sum
