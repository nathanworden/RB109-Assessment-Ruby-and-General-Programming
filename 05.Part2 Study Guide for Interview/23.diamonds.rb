# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# PEDAC
# Problem
# Input: integer (denoting the nxn grid)
# Output: A diamond (n lines tall and wide)

# Examples

# Data Structures
# Array

#Algorithm
# N times do:
    # Print one star. Each successive time add two stars



# Code


def diamond(n)
  n.times {|num| puts ("*" * num).center(n) if num.odd? }
  n.downto(1) {|num| puts ("*" * num).center(n) if num.odd?} 
end


diamond(9)
