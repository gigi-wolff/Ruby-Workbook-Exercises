# 1--------
munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
  }

total_age = 0
munsters.map {|k,v| total_age += v["age"] if v["gender"] == "male"}

puts "Total age of males in munster family is #{total_age}"

# 2--------
munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" } 
}

i=0
munsters.each do |k,v| 
  v["name_length"] = k.length 
  v["index"] = i
  i += 1 
end

puts munsters.to_a.sort_by {|k,v| v["name_length"]}
puts munsters.to_a.sort_by {|k,v| v["index"]}

# 3--------
munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each {|k,v| puts "#{k} is a #{v["age"]} year old #{v["gender"]}"}

# 5--------
sentence = "Humpty Dumpty sat on a wall."
reverse_words = sentence.delete(".").split.reverse!
reverse_sentence = reverse_sentence.join(" ")+(".")
puts reverse_sentence

# 8--------
class String
  def pretty_short_version(max_length)
    if (self.length > max_length) then
      words = self.split      
      length_so_far = 3  
      str = "" 
      #add word to string if it won't cause us to go over limit       
      words.each {|word| str = str + word + " " if (length_so_far += word.length+1) < max_length}     
      return str + "..." 
    else
      return self
    end     
  end
end

characters = [
    { :character => "Batman", :real_name => "Bruce Wayne", :description => "Comic book superhero who fights crime while wearing a costume loosely based on a bat" }, 
    { :character => "Robin", :real_name => "Dick Grayson", :description => "Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes" },
    { :character => "Commisioner Gordon", :real_name => "James Gordon", :description => "Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone" }, 
    { :character => "Alfred", :real_name => "Alfred", :description => "The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman" }
    ]


characters.each.map do|char_hash|    
  output_string = ""
  char_hash.values.map do |field| 
    output_string += field.pretty_short_version(32) + "   "
  end
  p output_string
end
#puts "some short test of function".pretty_short_version(20)
