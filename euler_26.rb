require 'eratosthenes.rb'
(1000).downto(1) do |d|
	next unless Eratosthenes.is_prime(d)
	c = 1
	while (10**c - 1) % d != 0 do
	   c +=1 
	end
	if d-c == 1
		puts d
		break
	end
end
