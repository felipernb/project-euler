coins = [1,2,5,10,20,50,100,200]
target = 200
ways = [1] + [0] * target

coins.each do |coin|
	(coin .. target).each do |i|
		ways[i] += ways[i-coin] 
	end
end
puts ways[target]

