def is_pandigital(n)
	n = n.to_s if n.class != String
	digits = n.split(//).map{|i| i.to_i}.sort
	return false if digits.length != digits.max
	(1..digits.max).each do |i|
		return false if digits[i-1] != i 
	end
	return true
end

require 'eratosthenes'
# there can be no pandigital prime with 8 or 9 digits, because the sum of all digits, in both cases, is multiple of 9
Eratosthenes.calculate_primes(7654321)
7654321.downto(1) do |i|
	if Eratosthenes.is_prime(i) and is_pandigital(i)
		puts i
		break
	end
end
