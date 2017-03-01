class A
 def a(x)
   puts x
   puts "inside A"
 end
end

class B < A
  def a(x,y)
    puts x, y
    puts "inside B"
    super(y)
  end
end

B.new.a("a", "d")
