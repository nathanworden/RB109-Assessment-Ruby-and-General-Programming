# Write a method that takes a single String argument and returns a new 
# string that contains the original value of the argument, but the first
# letter of every word is now capitalized.

# You may assume that words are any sequesnce of non-blank characters,
# and that only the first character of each word must be considred.

# Examples / Test Cases

# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The JavaScript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Algorithm
# Split the string into an array of words
# Loop through the words capitalizing the first letter of each word

def word_cap(string)
  words = string.split(' ')
  words.map! do |word|
    characters = word.chars
    characters[0] = characters[0].upcase
    characters.join("")
  end
  words.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The JavaScript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'