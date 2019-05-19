# PEDAC
# Problem
# Take a string as an argument, return the string in reverse order
# Do not use the reverse method

# Examples / Test Cases
# reverse_string("hello there") == "ereht olleh"
# reverse_string("") == ""
# reverse_string("a") == "a"
# reverse_string("Nathan4President") == "tnediserP4nahtaN"

# Data Structures
# Array
# string

# Algorithm
# define a method called 'reverse_string' which accepts a parameter "string"
# initiate a local variable called 'characters' which points to the "string" turned into an array of its characters
# initiate an empty array called 'output'
# obtain the number of elements in the characters array, save this in a variable called "number"
# For 'number' times pop off the last element of the 'characters' array and push it to the 'output' array
# join the output array and return it

# Code

def reverse_string(string)
  characters = string.chars
  output = []
  number = characters.length
  number.times do
    output << characters.pop
  end
  output.join
end

p reverse_string("hello there") == "ereht olleh"
p reverse_string("") == ""
p reverse_string("a") == "a"
p reverse_string("Nathan4President") == "tnediserP4nahtaN"