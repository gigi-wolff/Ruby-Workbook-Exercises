# 1--------
s = "The Flintstones Rock!"
10.times {|i| puts " "*i + s}

# 2--------
statement = "The Flintstones Rock"

h = {}
statement.each_char do |letter|
  
  if h.has_key?(letter) then #if letter in hash increment count 
    h[letter] +=1 
  else                       #else add letter to hash set count to 1
    h[letter]=1
  end
end

puts h

# 3--------
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# 5--------
def factors(number)
  dividend = number
  divisors = []
  while (dividend > 0)
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end 
  divisors
end

# 8--------
heading = "capitalize the start of each word"
heading = (heading.split(" ").map! {|word| word.capitalize!}).join(" ")
puts heading

# 9--------
class String
  def shorten_string(max_length)
     if (self.length > max_length) then
      short_string = self.slice!(0..max_length-1) 
      short_string += "..."
     else
      short_string = self
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
    output_string += field.shorten_string(32) + "   "
  end
  p output_string
end
  

# 10--------

munsters = { 
    "Herman" => { "age" => 32, "gender" => "male" }, 
    "Lily" => { "age" => 30, "gender" => "female" }, 
    "Grandpa" => { "age" => 402, "gender" => "male" }, 
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |character, desc|
  age = desc["age"]
  puts "#{character} age is #{age}"
  
  if age < 18 and age > 0
    desc["demographic"] = "kid"
  elsif age >= 18 
    desc["demographic"] = "adult"
  elsif age >= 65 
    desc["demographic"] = "senior"
  else
    puts "error: age not in range"
  end
end

puts munsters
