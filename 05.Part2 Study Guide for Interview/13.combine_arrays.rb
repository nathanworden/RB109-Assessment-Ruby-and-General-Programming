# PEDAC

# Problem
# Write a method that combines two Arrays passed in as arguments, and returns a 
# new Array that contains all elements from both Array arguments, with the elements
# taken in alternation

# You may assume that both input Arrays are non-empty, and that they have the same 
# number of elements
# input: two arrays
# output one array, with the elements of the first two combined in alternating order

# Examples / Test cases

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Data Structures
# Arrays


# Algorithm
# Initiate an empty output array
# initiate a counter variable to 0
# loop through both arrays pushing the element at index 'counter' to the output array
# increment the counter variable by 1
# 0.upto(array1.length)
# return the output array

# Code

def interleave(array1, array2)
  output = []
  0.upto(array1.length - 1) do |num|
    output << array1[num] << array2[num]
  end
  output
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


# Another way to do it via Chris Lee:

# def interleave(array1, array2)
#   array1.zip(array2).flatten
# end


