# Write a method that takes a string argument and returns a new string 
# that contains the value of the original string with all consecutive 
# duplicate characters collapsed into a single character.

# PEDAC
# Problem
# input: string (which may contain duplicate characters)
# ouput: string with dublicate characters collapsed into a single character

# Data Structures 
# Array

# Algorithm
# create an empty output array
# Iterate though each character
# If the character is the same as the character before it, don't add it to the new array
# If the character is differeent than the character before it, add it

def collapse(string)
  characters = string.chars
  output = [characters[0]]
  current_index = 1
  output_index = 0
  loop do
    if output[output_index] != characters[current_index]
      output << characters[current_index]
      current_index += 1
      output_index +=1
    else
      current_index += 1
    end
    break if current_index >= string.size
  end
  output.join
end

p collapse('bbbbbbbbb') == 'b'
p collapse('bbbbbbbbb') == 'b'
p collapse('wwooonndeerrfull woorrlldd') == 'wonderful world'
p collapse('222xyzxyzyx') == '2xyzxyzyx'
p collapse('Q') == 'Q'
p collapse('AAbbCC') == 'AbC'
p collapse('') == ''


