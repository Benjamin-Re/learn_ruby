#ehm this shit is insane. How am i supposed to know how this works 
def echo s
  s
end

def shout s
  s.upcase
end

#    def repeat s
 #     s + ' ' + s
  #  end

 def repeat(s, n=2)
     output = (s+' ')*n
     output.rstrip
 end

  # puts repeat("hello", 3)

def start_of_word (s, n=0)
  s[0...n]
end

#another start of word option
def initial s
  s.split(" ").first
end
 
#puts initial "Ben is a cool guy"

#puts start_of_word "hello", 1

def first_word s
  s.split(" ").first 

end



def titleize s
  

  words = s.split.map do |i|
      if ["and", "the", "over"].include?(i)
        i
      else
      i.capitalize
      end
  end
  words.first.capitalize!
  words.join(" ")
end

puts titleize "the hello world how are you and your friends?"