# PEDAC

# Problem
# Write a method that will return a substring based on specified indicies

# input: a string and two integers. The integers denote the index of the substring
# output: a string. The substring denoted

# Examples / Test Cases
# substring("honey", 0, 2) == "hon"
# substring("honey", 1, 2) == "on"
# substring("honey", 3, 9) == "ey"
# substring("honey", 2) == "n"

# Data Structures
# Arrays
# strings

# Algorithm
# Use element reference to return the substring

# Code

def substring(string, start, finish=start)
  second_index = finish - start + 1
  string[start, second_index]
end

p substring("honey", 0, 2) ==  "hon"
p substring("honey", 1, 2) ==  "on"
p substring("honey", 3, 9) ==  "ey"
p substring("honey", 2) ==  "n"