def is_pentagonal?(n)
	p = (Math.sqrt(1+24*n)+1)/6
	p == p.to_i
end

i = 0
pentagonals = [1]
while true do
	i += 1
	pentagonals.push(i*(3*i-1)/2)
	(2..pentagonals.length-1).each do |j|
		if is_pentagonal?((pentagonals[i] - pentagonals[j]).abs) and is_pentagonal?(pentagonals[i] + pentagonals[j])
			puts (pentagonals[i] - pentagonals[j]).abs
			exit
		end
	end
end
