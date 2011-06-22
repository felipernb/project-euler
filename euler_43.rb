sum = 0

[0,1,2,3,4,5,6,7,8,9].permutation do |d|
	if d[3].to_i % 2 == 0 and 
		d[2,3].join.to_i % 3 == 0 and 
		d[3,3].join.to_i % 5 == 0 and 
		d[4,3].join.to_i % 7 == 0 and
		d[5,3].join.to_i % 11 == 0 and
		d[6,3].join.to_i % 13 == 0 and
		d[7,3].join.to_i % 17 == 0
		
		sum += d.join.to_i
	end
end
puts sum
