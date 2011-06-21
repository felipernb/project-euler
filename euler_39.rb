require 'set'
def possible_sides(p)
	coords = []
	(2..p-2).each do |h|
		(1..h).each do |a|
			break if a + h >= p
			b = Math.sqrt(h**2 - a**2)
			next unless a+b+h == p
			coords.push([a,b.to_i,h].sort) if b.to_i == b and b > 0
		end
	end
	return Set.new(coords).length
end

max = 0
max_p = 0
(3..1000).each do |p|
	np = possible_sides(p)
	if np > max
		max_p = p
		max = np
	end
end
puts max_p
