

# Problem
# Select the element out of the array if its index is a fibonacci number
# Any one fibonacci number is the sum of the two fibonacci numbers that come before it
# input: Array
# output: Array with only the elements whose index in the input Array was a fibonacci number (starting with 1, not 0)

# Examples / Test Cases
# Fibonacci sequence:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, etc...

# alphabet = ("a".."z").to_a
# names = ['Nathan', 'Jeanette', 'Joshua', 'Daniel', 'Mark', 'Laura', 'Daniel', 'Kaluah', 'Goober']

# p fibs_index(alphabet) == ['a', 'b', 'c', 'd', 'f', 'i', 'n', 'v']
# p fibs_index(names) == ['Nathan', 'Jeanette', 'Joshua', 'Daniel', 'Laura', 'Goober']


# Algorithm

# Take the size of the array
# Create an array with the number of fibonaci numbers up to that number
    # Take an array with 0, and 1, add the last two elements together, push that to the array. repeat.
# Select the items in the array with the index of the fib nums.

def fibs_index(arr)
  fibs = [0, 1]
  until fibs[-1] > arr.size
    fibs << fibs[-1] + fibs[-2]
  end
  arr.select.with_index {|item, index| fibs.include?(index)}
end



alphabet = ("a".."z").to_a
names = ['Nathan', 'Jeanette', 'Joshua', 'Daniel', 'Mark', 'Laura', 'Daniel', 'Kaluah', 'Goober']
# p fibs_index(alphabet)

p fibs_index(alphabet) == ['a', 'b', 'c', 'd', 'f', 'i', 'n', 'v']
p fibs_index(names) == ['Nathan', 'Jeanette', 'Joshua', 'Daniel', 'Laura', 'Goober']






