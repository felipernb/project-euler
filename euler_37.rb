require 'eratosthenes'
Eratosthenes.calculate_primes(1000000)
list = []
def is_truncatable_prime(n)
	return false if n < 10 or not Eratosthenes.is_prime(n)
	n_s = n.to_s
	while n_s.length > 0 do
		return false unless Eratosthenes.is_prime(n_s.to_i)
		n_s = n_s[0..-2]
	end
	n_s = n.to_s
	while n_s.length > 0 do
		return false unless Eratosthenes.is_prime(n_s.to_i)
		n_s = n_s[1..-1]
	end
	return true
end
i = 11
while list.length < 11 do
	list.push(i) if is_truncatable_prime(i)
	i+=1	
end
sum = 0
list.each {|x| sum+=x}
puts sum
