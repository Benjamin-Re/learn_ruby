class Timer
#  attr_reader	:seconds
#  attr_writer 	:seconds		#together-> attr_accessor :seconds

	def seconds	#attr_reader :seconds
		@seconds
	end

	def seconds=(str) #attr_writer :seconds
		@seconds = str
	end

	def initialize
	    @seconds = 0
	end

	def time_string
	    hours = @seconds/3600
	    remainder = @seconds%3600
	    sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
	end
  
end
