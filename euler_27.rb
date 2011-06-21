require 'eratosthenes.rb'

Eratosthenes.calculate_primes(10000)

max_n = 0
prod = 0
(-1000 .. 1000).each do |a|
	(-1000 .. 1000).each do |b|
		n = 0
		while Eratosthenes.is_prime(n**2 + a*n + b) do
		   	n += 1
		end
		if n > max_n
			max_n = n	
			prod = a*b
		end
	end
end
puts prod			

