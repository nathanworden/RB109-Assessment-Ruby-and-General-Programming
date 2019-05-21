# PEDAC
# Problem
# Write a method that will determine whether an integer is a prime. Don't use the
# Prime Class
# input: integer
# output: boolean

# Examples / Test Cases
# is_prime?(3) == true
# is_prime?(4) == false

# Data Structures
# Maybe Arrays

# Algorithm
# Create a range of numbers from 2 up to the input numeber, non-inclusive
# Iterate through the range checking to see if the input number divided by
# each number in the range leaves any remander
# If there is no remainder then the input is not a prime number, therefore return false
# If there is a remainder on ALL of the tests, then the input is a prime number, therefore return true


# Code

def is_prime?(integer)
  return false if integer == 1
  (2...integer).to_a.all? {|num| integer % num != 0}
end

p is_prime?(1) == false
p is_prime?(2) == true
p is_prime?(3) == true
p is_prime?(4) == false
p is_prime?(5) == true
p is_prime?(6) == false
p is_prime?(7) == true
p is_prime?(8) == false
p is_prime?(9) == false
p is_prime?(10) == false
p is_prime?(11) == true
p is_prime?(12) == false
p is_prime?(13) == true
p is_prime?(14) == false