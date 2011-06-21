require 'eratosthenes'
require 'pandigital'

# there can be no pandigital prime with 8 or 9 digits, because the sum of all digits, in both cases, is multiple of 9
Eratosthenes.calculate_primes(7654321)
7654321.downto(1) do |i|
	if Eratosthenes.is_prime(i) and is_pandigital(i)
		puts i
		break
	end
end
