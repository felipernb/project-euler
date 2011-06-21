class Eratosthenes
	@@primes = []	
	def self.calculate_primes(n)
		if @@primes.length < n
			@@primes[0] = false
			@@primes[1] = false
			(2..n).each {|i| @@primes[i] = true}
			@@primes[1] = false
			(2..Math.sqrt(n)).each do |i|
				(i*i).step(n, i) {|x| @@primes[x] = false} if @@primes[i]
			end
		end
		@@primes
	end

	def self.is_prime(n)
		calculate_primes(n) if n > @@primes.length
		@@primes[n]
	end
	
end


