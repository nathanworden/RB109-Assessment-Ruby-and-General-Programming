#PEDAC

# Problem
# Select the element out of the array if its index is a fibonacci number
# Any one fibonacci number is the sum of the two fibonacci numbers that come before it
# input: Array
# output: Array with only the elements whose index in the input Array was a fibonacci number

# Examples / Test Cases
# Fibonacci sequence:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, etc...

# alphabet = ("a".."z").to_a

# fibs_index(alphabet) == ['a', 'b', 'c', 'd', 'f', 'i', 'n', 'v']

# ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
# ["0", "1", "2", "3", " ", "5", " ", " ", "8", " ", " ", " ", " ", "13", " ", " ", " ", " ", " ", " ", " ", "21", " ", " ", " ", " "]

# Data Structures
# Array

# Algorithm
# define a method called 'fibs_index' which accepts an array as a paramater
# define another method called 'fib_numbers' which accepts an integer, 'n' as a parameter
    # 'fib_numbers' outputs an array with fibonacci numbers up to 'n'
    # initiate an array called 'fibs' with 0 and 1 as the two elements
    # initiate a num_minus_2 variable to be 0
    # initiate a num_minus_1 variable to be 1
    # loop through the following:
        # push num_minus_2 + num_minus_1 to the 'fibs' array IF it is smaller than n
        # If n is larger than num_minus_2 + num_minus_1, then break the loop
        # increment num_minus_2 and num_minus_1 by 1
    # return the 'fibs' array
# Iterate through the input array and select the element's whose index is an element in the 'fibs' array
# Return this array


# Code


def fibs_index(array)
  array.select.with_index do |element, index|
    fib_numbers(array.length).include?(index)
  end
end


def fib_numbers(n)
  fibs = [0, 1]
  num_minus_2 = 0
  num_minus_1 = 1
  loop do
    next_fib_num = fibs[num_minus_2] + fibs[num_minus_1]
    if next_fib_num <= n
      fibs << next_fib_num 
    else
      break
    end
    num_minus_2 += 1
    num_minus_1 += 1
  end
  fibs
end


alphabet = ("a".."z").to_a
names = ['Nathan', 'Jeanette', 'Joshua', 'Daniel', 'Mark', 'Laura', 'Daniel', 'Kaluah', 'Goober']

p fibs_index(alphabet) == ['a', 'b', 'c', 'd', 'f', 'i', 'n', 'v']
p fibs_index(names) == ['Nathan', 'Jeanette', 'Joshua', 'Daniel', 'Laura', 'Goober']









