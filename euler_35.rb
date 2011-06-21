require 'eratosthenes'

def rotations(n)
	n_s = n.to_s.split(//)
	(1..n_s.length-1).each do |s|
		n_s.push(n_s.shift)
		yield n_s.join.to_i
	end
end


Eratosthenes.calculate_primes(1000000)

circulars = []

(2..1000000).each do |n|
  if Eratosthenes.is_prime(n)
    is_circular = true
    rotations(n) do |s|
      if !Eratosthenes.is_prime(s)
        is_circular = false
        break
      end
    end
    circulars.push(n) if is_circular
  end
end
puts circulars.length
