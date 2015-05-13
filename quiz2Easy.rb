# 1---------
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts ages.key?("spot")
puts ages.include?("spot")
puts ages.member?("spot")

# 2---------
ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
total_age = 0
ages.each {|k,v| total_age += v}
puts "total age is #{total_age}"
#ages.values.inject(:+)

# 3---------
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
young = {}
ages.each {|k,v| young[k]=v if v<100 }
puts young
#ages.keep_if { |key, value| value < 100 }

# 4---------
munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.capitalize!

munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.swapcase!

munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.downcase!

munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.upcase!

# 5---------
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
puts ages

# 6---------
ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }

puts ages.values.min

# 7---------
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.include?("Dino")

# 8---------
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index {|name, i| puts "array element #{i}" if name.include?('Be')}

i=flintstones.index {|name| name[0,2] == "Be"}
puts "array element which starts with 'Be' is #{i}" 

# 9 & 10----
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.map! {|name| name[0,3]}

