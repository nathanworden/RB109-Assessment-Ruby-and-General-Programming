# PEDAC

# Problem
# Write a method that finds all substrings in a string. No 1 letter words.

# Examples / Test Cases
# substrings("band") == ["ba", "ban", "band", "an", "and", "nd"]
# substrings("world") == ["wo", "wor", "worl", "world" "or", "orl", "orld", "rl", "rld", "ld"]
# substrings("ppop") == ["pp", "ppo", "ppop", "po", "pop", "op"]

# Data Structure
# Array

# Algorithm
# Initiate an 'output' empty array 
# Initiate a front_index variable to 0
# Initiate a back_index variable to front_index + 1
# Loop through the string the length - 1 times, incrementing the back index by 1
    # pushing the string to output each time
# Loop through all of the above, but incrementing front_index
# Do this length times

# Code

def substrings(string)
  output = []
  (string.length - 1).times do |front_index|
    (string.length - front_index - 1).times do |num_of_chars|
      num_of_chars += 2
      output << string[front_index, num_of_chars]
    end
  end
  output
end

p substrings("band") == ["ba", "ban", "band", "an", "and", "nd"]
p substrings("world") == ["wo", "wor", "worl", "world", "or", "orl", "orld", "rl", "rld", "ld"]
p substrings("ppop") == ["pp", "ppo", "ppop", "po", "pop", "op"]


# Chris's answer

# def substring(word, beginning_num, end_num=nil)
#   return word[beginning_num] if !end_num

#   array = []
#   word.split("").each_with_index do |letter, index|
#     array.push(letter) if index >= beginning_num && index <= end_num
#   end
#   return array.join("")
# end


# def substrings(string)
#   results = []
#   string.chars.each_with_index do |letter, index|
#     position = index + 1
#     (string.size - position).times do |n|
#       results << substring(string, index, index+n+1)
#     end
#   end
#   results
# end

# p substrings("band") == ["ba", "ban", "band", "an", "and", "nd"]
# p substrings("world") == ["wo", "wor", "worl", "world", "or", "orl", "orld", "rl", "rld", "ld"]
# p substrings("ppop") == ["pp", "ppo", "ppop", "po", "pop", "op"]




















