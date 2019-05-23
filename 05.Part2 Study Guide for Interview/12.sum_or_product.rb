# PEDAC
# Problem
# Write a program that asks the user to enter an integer greater than 0, then 
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.
# Input: User input, (string) number
# Input: User input "sum" or "product"
# Output: string with interpolation.

# Examples / Test Cases

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers betwee 1 and 6 is 120


# Data Structures
# Array

# Algorithm
# Ask the user for input (a number greater than 0)
# convert the input to an integer and save it
# Ask the user if they want the sum or product
# Save the input. If the input is 's', sum them
# If the input is 'p' compute the product

# Code

puts "Please enter an integer greater than 0:"
integer = gets.chomp.to_i
output = nil

loop do 
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  action = gets.chomp
  
  if action == 's'
    output = (1..integer).to_a.reduce(:+)
    puts "The sum of the integers between 1 and #{integer} is #{output}"
    break
  elsif action == 'p'
    output = (1..integer).to_a.reduce(:*)
    puts "The product of the integers between 1 and #{integer} is #{output}"
    break
  else
    puts "You did not enter a valid input"
  end
end














