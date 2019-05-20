# PEDAC

# Problem
# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number. Print out all numbers between the two numbers
# except if a number is divisible by 3, print "Fizz", if a number is
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5
# print "FizzBuzz".

# Input: two numbers, a starting and ending number
# Output: all number between the two (inclusive) except that:
    # numbers divisible by 3 are now "Fizz"
    # numbers divisible by 5 are now "Buzz"

# Examples / Test Cases
# fizzbuzz(1, 15) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]

# Data Structures
# Array

# Algorithm
# define a method named 'fizzbuzz' which accepts two integers as parameters
# initiate an array which holds all the numbers between the two input integers, inclusive.
# Iterate through the array, if the element is divisible by 3, replace it with "Fizz"
# if the element is divisble by 5, replace it with "Buzz"
# If the element is divisble by both 3 and five, replace it with "FizzBuzz"
# return the array

# Code

def fizzbuzz(start, finish)
  output = (start..finish).to_a.map do |element|
    case
    when element % 3 == 0 && element % 5 == 0
      'FizzBuzz'
    when element % 3 == 0
      'Fizz'
    when element % 5 == 0
      'Buzz'
    else
      element
    end
  end
  output.join(", ")
end

p fizzbuzz(1, 15) #== [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]





