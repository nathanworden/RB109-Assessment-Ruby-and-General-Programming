# Write a method that will generate random english math problems. The 
# method should take a length, then return a math phrase with that 
# many operations

# Example
# mathphrase(1) == "five minus two"
# mathphrase(2) == "two plus three times eight"
# mathphrase(3) == "one divided by three plus five times zero"

# Given:

NUMBERS = %w(zero one two three four five six seven eight nine ten)
OPERATORS = %w(plus minus times divided)

# Algorithm
# initiate an array named 'phrase' with a NUMBER in it
# Do the following the number of times of the input:
    # push a random operator and then a random number into "Phrase"
# Iterate throug the phrase array and if a word is "divided",
    # Replace it with 'divided by'
# join the phrases array on the spaces and return the result

# Code

def mathphrase(integer)
  phrase = [NUMBERS.sample]
  integer.times do |num|
    phrase << OPERATORS.sample << NUMBERS.sample
  end
  phrase.map! do |word| 
    if word == 'divided'
      'divided by'
    else
      word
    end
  end
  phrase.join(" ")
end

p mathphrase(1) #== "five minus two"
p mathphrase(2) #== "two plus three times eight"
p mathphrase(3) #== "one divided by three plus five times zero"