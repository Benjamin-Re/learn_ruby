#write your code here
def translate(s)
	alpha 		= ("a".."z").to_a
	vowels 		= %w(a e i o u y)
	consonants 	= alpha - vowels
	phoneme 	= "qu"

	if s.length > 2
		word = s.split.map do |i|

			if vowels.include?(i[0])
				i + "ay"
			
			elsif phoneme.include?(i[0]) 

				p = i.slice!(/^../)

				i + p + "ay"

			elsif phoneme.include?(i[1]) 

				p = i.slice!(/^.../)

				i + p + "ay"
			

			elsif consonants.include?(i[0]) && consonants.include?(i[1]) && consonants.include?(i[2])
				p = i.slice!(/^.../)

				i + p + "ay"



			elsif consonants.include?(i[0]) && consonants.include?(i[1])
				p = i.slice!(/^../)

				i + p + "ay"

			elsif consonants.include?(i[0])
				
				p = i.slice!(/^./)

				i + p + "ay"

			end

		end

		word.join(" ")

	else 

	s + "ay"
		
	end
end
puts translate ("apple")
puts translate ("banana")
puts translate ("cherry")
puts translate ("eat pie")
puts translate ("three")
puts translate ("quiet")
puts translate ("square")
puts translate ("i sit in the park and read a book")