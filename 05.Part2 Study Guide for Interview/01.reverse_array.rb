# PEDAC

# Problem
# Reverse an array without using the built-in reverse method

# Examples / test cases
# reverse_array(["cat", "dog", "sheep", "Chance the Rapper"]) == ["Chance the Rapper", "sheep", "dog", "cat"]
# reverse_array([]) == []

# Data Structures
# Array

# Algorithm
# Initiate an 'output' array as an empty array
# For the number of times that the input array is long:
    # Push the last element of the array into the empty array
# return the output array

#Code

def reverse_array(array)
  output = []
  (array.length).times do |_|
    output << array.pop 
  end
  output
end

p reverse_array(["cat", "dog", "sheep", "Chance the Rapper"]) == ["Chance the Rapper", "sheep", "dog", "cat"]
p reverse_array([]) == []