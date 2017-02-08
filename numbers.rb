num = 1001
4.times do
  puts "#{num.class}: #{num}"
  num *= num
end

# when using float both preced and follow the decimal point with number else
# 1.e3 ruby tries to call the method e3

3.times { print "X" }
1.upto(5) { |i| print i, " " }
99.downto(95) { |i| print i, " " }
50.step(80,5) {|i| print i, " "}
10.downto(7).with_index { |num, index| puts "#{index}: #{num}"}
