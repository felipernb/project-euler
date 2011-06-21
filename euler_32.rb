require 'pandigital'
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
