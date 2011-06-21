def is_pandigital(n)
	n = n.to_s if n.class != String
	digits = n.split(//).map{|i| i.to_i}.sort
	return false if digits.length != digits.max
	(1..digits.max).each do |i|
		return false unless digits[i-1] == i 
	end
	return true
end

