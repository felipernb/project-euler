def is_triangle?(tn)
	n = (-1 + Math.sqrt(1+8*tn))/2
	n == n.to_i
end

def triangle(n)
	n*(n+1)/2
end

def is_pentagonal?(n)
	p = (Math.sqrt(1+24*n)+1)/6
	p == p.to_i
end

def is_hexagonal?(hn)
	n = (1+Math.sqrt(1+8*hn))/4
	n == n.to_i
end

n = 286
i = triangle(n)
while not (is_pentagonal?(i) and is_hexagonal?(i)) do
	n+=1
	i = triangle(n)
end

puts i
