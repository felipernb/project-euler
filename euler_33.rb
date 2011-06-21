x = 1
(1..9).each do |i|
	(1..i-1).each do |j|
		(1..j-1).each do |k|
			ki = k*10 + i
			ij = i.to_f*10+j
			x *= ij/ki if k*ij == ki*j
		end
	end
end
puts x
