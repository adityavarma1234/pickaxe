# Also known as associative arrays, maps or dictionaries
# you index an hash just like array but instead of just integers you can use any type:
# symbols, strings and regular expressions, and so on
# It remembers the order in which we add items to hash!!!
h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine'}

p h.length
p h['dog']
h['cow'] = 'bovine'
h[12] = 'dodecine'
h['cat'] = 99
p h
