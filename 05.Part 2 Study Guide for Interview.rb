# take a string as an argument, return the string in reverse order
# don't use the reverse method in the String class.

# PEDAC

# Problem

# take a string as an argument, return the string in reverse order
# don't use the reverse method in the String class.

# Example / Test Cases
# reverse_it("hello friend") == "dneirf olleh"
# reverse_it("") == ""

# Data Structure
# Array
# Strings

# Algorithm
# Turn string into an Array called 'input'
# Create an empty array
# Iterate through the 'input' array ('pop'), 
# pushing the return value into the empty array, one element at a time
# Convert the return array back into a string, and retrun this.


# Code

def reverse_it(string)
  input = string.chars
  output = []
  (string.size).times do
    output << input.pop
  end
  output.join
end


p reverse_it("hello friend") == "dneirf olleh"
p reverse_it("") == ""