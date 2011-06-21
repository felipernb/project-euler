def dec2bin(n)
	binary = ""
	while n > 0 do
		binary = (n & 1).to_s + binary
		n = n >> 1
	end
	binary
end

class String
	def is_palindrom?
		self == self.reverse
	end
end

palindroms = []
(1..1000000).each do |n|
	palindroms.push(n) if n.to_s.is_palindrom? and dec2bin(n).is_palindrom?
end

sum = 0
palindroms.each {|p| sum +=p}
puts sum
