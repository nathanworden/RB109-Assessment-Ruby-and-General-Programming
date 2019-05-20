#PEDAC
# Problem:
# Write a method that takes two numbers. It should print out all primes between
# the two numbers. Don't use Ruby's 'prime' class.
# input: two integers
# output: A single line, comma seperated list of all the primes between the two numbers

# Examples / Test Cases
# find_primes(3, 10) == [3, 5, 7]
# find_primes(7, 19) == [7, 11, 13, 17, 19]

# Data Structures
# Array

# Algorithm
# Create an array with all the numbers between input1 and input2, inclusive
# Iterate through the array and select the numbers that are primes
    # create an array with all numbers between 2 and the current number, non-inclusive
    # If current_number divided by the check number has no remainder, it is not a prime number

def find_primes(int1, int2)
  range = (int1..int2).to_a
  range.select do |num|
    (2...num).none? {|check| num % check == 0}
  end
end

p find_primes(3, 10) == [3, 5, 7]
p find_primes(7, 19) == [7, 11, 13, 17, 19]
p find_primes(0, 109)