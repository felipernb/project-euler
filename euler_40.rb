a = ""
i = 1
while a.length < 1000000 do
	a += i.to_s
	i +=1
end
total = 1
[0,9,99,999,9999,99999,999999].each {|i| total *= a[i,1].to_i}
puts total

