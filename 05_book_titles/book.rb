class Book
	def title=(new_title)
		array = new_title.split(" ")
		array.first.capitalize!
		array.each do |x|
			if %w(in a an and or over of in the).include?(x)
				x
			else
				x.capitalize!
			end
		end
		@title = array.join(" ")
	end

	def title
		@title
	end

end