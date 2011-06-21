def is_pandigital(n)
	n = n.to_s unless n.class == String
	digits = n.split(//).map{|i| i.to_i}.sort
	return false unless digits.length == digits.max
	(1..digits.max).each do |i|
		return false unless digits[i-1] == i 
	end
	return true
end

