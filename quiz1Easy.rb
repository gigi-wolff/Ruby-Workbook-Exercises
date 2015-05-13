# 3--------

advice = "Few things in life are as important as house training your pet dinosaur."
advice.sub!("important","urgent")
puts advice

# 5--------
puts (10..100).include?(42)

# 6--------
famous_words1 = "and seven years ago..."
famous_words1.prepend("four score")

famous_words2 = "and seven years ago..."
famous_words2 = "four score" + famous_words2
puts famous_words1
puts famous_words2

# 8--------
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones
flintstones.flatten!
p flintstones

# 9--------
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.assoc("Barney")

# 10-------
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index {|char, index| flintstones_hash[char] = index}

puts flintstones_hash

