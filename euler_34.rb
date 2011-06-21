class Array
	def sum
		sum = 0
		self.each {|i| sum += i}
		sum
	end
end
factorial = [1]
(1..9).each {|i| factorial[i] = i * factorial[i-1]}

total = 0
(10..factorial.sum).each do |n|
	digits = n.to_s.split("").map {|i| i.to_i}
	sum = 0
	digits.each {|d| sum += factorial[d]}
	total += n if n == sum
end
puts total
