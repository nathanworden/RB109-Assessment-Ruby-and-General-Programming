# PEDAC

# Problem
# Write a method that will take an array of numbers, and return the number of primes
# in the array.
# Input: array
# Output: integer (the number of primes in the input array)

# Examples / Test Cases
# count_primes([1, 2, 3, 4]) == 2
# count_primes([4, 6, 8, 10]) == 0
# count_primes([0, 7, 8, 11, 21, 19]) == 3

# Data Structures
# Arrays

# Algorithm
# Select all the numbers in the array which are prime
    # Prime numbers are:
    # numbers that when divideded by every number between 2 and themselves there
    # is always a remainder
# Return the number of elements in the array

# Code

def count_primes(array)
  array.delete_if {|num| num <= 1}
  primes = array.select do |num|
    (2...num).to_a.all? {|integer| num % integer != 0}
  end
  primes.count
end

p count_primes([1, 2, 3, 4]) == 2
p count_primes([4, 6, 8, 10]) == 0
p count_primes([0, 7, 8, 11, 21, 19]) == 3