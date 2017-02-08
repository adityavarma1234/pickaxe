a = [3.14159, "pie", 99]
a.class
a.length
a[0]
a[1]
a[2]
a[3]

b = Array.new
b.class
b.length
b[0] = "second"
b[1] = "array"
b

a = [1, 3, 5, 7, 9]
a[-1]
a[-2]
a[-99]

# a[start, count]
a[1,3]
a[3,1]
a[-3, 2]

# two period form includes end
# three period form does not include end
a = [1, 3, 5, 7, 9]
a[1] = 'bat'
a[-3] = 'cat'
a[3] = [9, 8]
# any gaps that result will be filled with nil
a[6] = 99

# important need to have a look at the implementation
a = [1, 3, 5, 7, 9]
a[2, 2] = 'cat'
a[2, 0] = 'dog'
a[1, 1] = [9, 8, 7]
a[0..3] = []
a[5..6] = 99, 98

# you can treat arrays as stacks, sets, queues, dequeues and FIFO queues
stack = []
stack.push "red"
stack.push "green"
stack.push "blue"
puts stack

stack.pop
stack.pop
stack.pop
puts stack

# shift and unshift to remove and add elements from head of an array
# combine push and shift to have a first in first out FIFO queue
queue = []
queue.push "red"
queue.push "green"
queue.shift
queue.shift
puts queue

# first and last methods to get first n and last n elements from the array
array = [1, 2, 3, 4, 5, 6, 7]
array.first(4)
array.last(4)
