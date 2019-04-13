# Notes

# Write a function that will return the count of distinct 
# case-insensitive alphabetic characters and numeric digits that 
# occur more than once in the input string. The input string can
# be assumed to contain only alphabets (both uppercase and 
# lowercase) and numeric digits.


# Problem
# Input: string
# Output: Integer
# Return the count of characters that occur more than once
# Case does not matter



# Examples / Test Cases
# p duplicate_count("") == 0
# p duplicate_count("abcde") == 0
# p duplicate_count("abcdeaa") == 1
# p duplicate_count("abcdeaB") == 2
# p duplicate_count("Indivisibilities") == 2

# Data Structures
# String, maybe array, integer

# Algorithm
# define a method duplicate_count which accepts a string as a parameter
# convert the string to an array
# initialize an empty array called 'counts'
# iterate through the array and push each character and the number 1 into the array if it is not already in the array
# if the character is already in the array, increment the number by 1

# Code

def duplicate_count(str)
  arr = str.downcase.chars
  counts = {}
  arr.each do |char|
    if counts.include?(char)
      counts[char] += 1
    else
      counts[char] = 1
    end
  end
  output = 0
  counts.each_value do |num|
    output += 1 if num > 1
  end
  output
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2






# Problem 2

# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet: a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.



# Problem
# Letters have a score associated to their posistion in the alphabet
# Retunrn the highest scoring word in a string
# If two words score the same, return the wor


# p high('man i need a taxi up to ubud') == 'taxi'
# p high('what time are we climbing up the volcano') == 'volcano'
# p high('take me to semynak') == 'semynak'
# p high('aa b') == 'aa'


def high(string)
  letter_scores = ('a'..'z').zip(1..26).to_h
  words = string.split

  word_scores = words.map do |word|
    score = 0
    word.chars.each { |char| score += letter_scores[char]}
    score 
  end
    words[word_scores.index(word_scores.max)]
end


#Another way to solve:

def high(string)
  letter_scores = ('a'..'z').to_a
  words = string.split

  word_scores = words.map do |word|
    score = 0
    word.chars.each { |char| score += letter_scores.index(char}
    score 
  end
    words[word_scores.index(word_scores.max)]
end



