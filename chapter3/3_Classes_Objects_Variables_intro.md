# 3. Class Objects and Variables Intro

* Initialize is a special method in ruby and when we call Class.new ruby allocates memory to hold an unitialized object and then calls the objects initalize method, passing any new parameters that were passed to new. 

```ruby
Class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end
```
* When we call puts it looks for to_s method defined in an object. As in development mode we will be printing values a lot of the time. We overrided the default to_s function. 

```ruby
b1 = BookInStock.new("isbn1", 2)
b2 = BookInStock.new("isbn2", 5)
b3 = BookInStock.new("isbn3", 6)

puts b1 # => prints ISBN: isbn1, price: 2.0

```

* See how the instance variables being set in the intialize method are readily available to method in to_s. Initialize variables once set are stored with each object and readily available to all its instance methods.
