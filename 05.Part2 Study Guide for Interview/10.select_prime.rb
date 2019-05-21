# PEDAC
# Problem Write a method that will take an array of numbers, and only return
# those that are prime
# Input: array of numbers
# Output: array of numbers selected for primes

# Examples / Test Cases
# select_primes([1, 2, 3, 4]) == [2, 3]
# select_primes([4, 6, 8, 10]) == []
# select_primes([21, 15, 11]) == [11]

# Data Structures
# Array

# Algorithm
# Iterate through the Array
# Select numbers that are prime
    # If the number divided by ALL numbers between 2 and itself leaves a remainder
    # Then it is a prime number

# Code

def select_primes(array)
  array.delete(1)
  array.select do |num|
    (2...num).to_a.all? {|int| num % int != 0}
  end
end

p select_primes([1, 2, 3, 4]) == [2, 3]
p select_primes([4, 6, 8, 10]) == []
p select_primes([21, 15, 11]) == [11]