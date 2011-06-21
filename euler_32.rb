def is_pandigital(n)
	n = n.to_s if n.class != String
	digits = n.split(//).map{|i| i.to_i}.sort
	return false if digits.length != digits.max
	(1..digits.max).each do |i|
		return false unless digits[i-1] == i 
	end
	return true
end
require 'set'
products = Set.new

(1..9).each do |i| 
	(1234..9876).each do |j|
		p = i*j
		products.add(p) if is_pandigital([i,j,p].join(""))
		break if p > 9876
	end
end

(12..98).each do |i| 
	(123..987).each do |j|
		p = i*j
		products.add(p) if is_pandigital([i,j,p].join(""))
		break if p > 9876
	end
end

sum = 0
products.each {|p| sum+=p}
puts sum
