strings = gets.split(',').map {|s| s.gsub!("\"","")} #words.txt should be passed as stdin: ruby euler_42.rb < words.txt
alphabet = { "A"=> 1, "B" => 2, "C" => 3, "D" => 4, "E" => 5, "F" => 6, "G" => 7, "H" => 8, "I" => 9, "J" => 10, "K" => 11,	"L" => 12, "M" => 13,
			"N" => 14,"O" => 15,"P" => 16,"Q" => 17,"R" => 18,"S" => 19,"T" => 20,"U" => 21,"V" => 22,"W" => 23,"X" => 24,"Y" => 25,"Z" => 26}
max_value = 0
string_values = []
strings.each do |s|
	value = 0
	(0..s.length-1).each {|c| value += alphabet[s[c,1]]}
	string_values.push value
	max_value = value if value > max_value
end

#calculate triangle numbers
triangle_numbers = {}
i = 1
while (n = i*(i+1)/2) < max_value do
	triangle_numbers[n] = true
	i+=1
end
i = 0
string_values.each {|v|	i += 1 if triangle_numbers[v]}
puts i
