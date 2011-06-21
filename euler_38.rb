def is_pandigital(n)
	chars = {}
	n.each_char do |c|
		return false if chars[c]
		chars[c] = true
	end
	return false if chars['0']
	return chars.length == n.length
end
pan = 0
9876.downto(5000) do |i|
	if is_pandigital(i.to_s + (i*2).to_s)
		puts i.to_s + (i*2).to_s
		break
	end
end
