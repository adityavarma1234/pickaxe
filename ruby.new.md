2.1 Ruby is an object oriented programming Language

Object is an instance of a Class.
In ruby every thing is an object.
You create objects by calling a constructor, special method of a class. Standard constructor is called new. 

Question: Then what is initialize?

song1 = Song.new("Ruby Tuesday")
song2 = Song.new("Enveloped in Python")

Every object has a unique identifier object, Object ID.
Instance variables are variables which are unique to each instance or object.
Instance methods are methods that can be defined inside a class and can be called in the context the class, depending upon accessibility constraints from outside the class like private protected

The state of the object is stored in the instance variables and instance methods have access to the instance variables

Methods are invoked by sending a "message" to an object.

puts "gin joint".length
puts "Rick".index("c")
puts 42.even?
puts sam.play(song)

Each line shows a method being called as an argument to puts??? Not sure about what this statement means?

The thing before the period is called the receiver and the name after the method is the method to be invoked. 

Receiver is basically an object and method an instance method of it.

Difference between ruby and other languages is that 

In languages like JAVA lets say to find the absolute value of a number we call a seperate function and pass the number

num = Math.abs(num)

In Ruby, the ability to determine the absolute number is builtin into the numbers??!!! 
Basically they a number is an object of Fixnum class and you can call various instance methods on it of which abs is one.

num = -1234
positive = num.abs

In C we write strlen(name)

In ruby we write name.length

So ruby is a genuine programming language
