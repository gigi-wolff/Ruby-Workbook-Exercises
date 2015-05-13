# 4---------
def char_options
  char_options = %w(a b c d e f 1 2 4 5 6 7 8 9 )  
end

def form_UUID()
  uuid = ""
  char_choices = char_options
  uuid_part = [8,4,4,4,12] #number of chars in each part of id
  uuid_last_part = uuid_part[uuid_part.size-1] #number of chars in last part of uuid
  
  uuid_part.each do |num_of_chars| 
    num_of_chars.times {|dummy| uuid += char_choices.sample}
    uuid += '-' unless num_of_chars == uuid_last_part #add the dash to uuid except at end
  end
  return uuid
end

uuid = form_UUID
puts "uuid 1: #{uuid}"

uuid = form_UUID
puts "uuid 2: #{uuid}"

# 5-------- 
class String
  def map_words!        
    s = self.split(/\p{Blank}/)  #turn into array of words    
    s.each do |word|      
      if word.match(/\p{Punct}$/) != nil #check if word ends in punctuation mark
        punc = word.match(/\p{Punct}$/)[0] #store punctuation
        word.delete! punc #delete punctuation from end of word        
        word.prepend(punc) #add punction to beginning of word        
      end      
      yield word
    end
  end
end


sentence = "Herman muntster is a BIG BIG man." 
sentence = sentence.map_words! {|word| word.reverse!}.join(" ")
puts "#{sentence}"

# 6--------
def is_a_number?(num)
  if /\D/.match(num) #if contains a non-digit 
    return false
  elsif /\d/.match(num) #if contains digits
    return true
  end
end


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  ip_addr_size = 4

  if dot_separated_words.size != ip_addr_size 
    puts "Ip address #{input_string} must contain #{ip_addr_size} digits"
    return false
  end   

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop    
    if !is_a_number?(word)
      puts "Invalid ip address #{input_string} contains non-digits"
      return false
    end
  end
  return true
end

ip = "10.4.5.11"
puts "Valid ip #{dot_separated_ip_address?(ip)}"




