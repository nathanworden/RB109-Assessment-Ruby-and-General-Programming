#PEDAC
# Write a method that takes an english phrase and returns a value.

# Examples / Test Cases
# computer("two plus two") == 4
# computer("seven minus six") == 1
# computer("zero plus eight") == 8

# Data Structures
# Hash
# Array

# Algorithm
# Define a hash of strings as keys, numbered zero through ten and integers as values
    # numbered 1 through 10
# Split the input string into separate words of an array.
# transform the elements of the array. If they are a number spelled out, transform them to an integer
# 

require 'pry'

NUMBERS = {'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4,  'five' => 5, 'six' => 6, 
            'seven' => 7, 'eight' => 8, 'nine' => 9, 'ten' => 10, 'plus' => :+, 'minus' => :-, 
            'divided' => :/, 'times' => :*}


def computer(string)
  english = string.split(" ")
  english.delete('by')
  english.map! do |element|
   NUMBERS[element] if NUMBERS.keys.include?(element)
  end


  order = []
  if english.include?(:+) || english.include?(:-)
    english.each_with_index do |element, index|
      if index == 0 && (english[1] == :+ || english[1] == :- ) 
        order << element
      elsif element == :* || element == :/
        order << [english[index - 1], element, english[index + 1]]
      elsif element.class == Symbol
        order << element
      elsif index == english.length - 1 && english[index - 1].class != Symbol
        order << element
      end
    end
  else
    order = english
  end

  binding.pry

  english = order.map do |element|
    if element.class == Array
      [element[0], element[2]].reduce(element[1])
    else
      element
    end
  end


  accumulator = english[0]
  operation = 1
  second_index = 2
  (english.length / 2).times do |_|
    accumulator = [accumulator, english[second_index]].reduce(english[operation])
    second_index += 2
    operation += 2
  end
  accumulator
end

# p computer("two plus two") == 4
# p computer("seven minus six") == 1
# p computer("zero plus eight") == 8
# p computer("two plus two minus three") == 1
# p computer("three minus one plus five minus four plus six plus ten minus four") == 15

# These test cases purposesfully do not respect order of operations
# p computer("eight times four plus six divided by two minus two") == 17 # not 33
# p computer("one plus four times two minus two") == 8 # not 7
# p computer("nine divided by three times six") == 18

#These test cases DO respect order of operations
p computer("eight times four plus six divided by two minus two") == 33
# p computer("one plus four times two minus two") == 7
# p computer("nine divided by three times six") == 18
# p computer("seven plus four divided by two") == 9
# p computer("seven times four plus one divided by three minus two") == 26
# p computer("one plus four times three divded by two minus two") == 5
# p computer("nine divided by three times six") == 18










