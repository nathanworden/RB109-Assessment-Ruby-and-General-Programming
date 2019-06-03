# PEDAC

# PROBLEM
# Consider a character set consisting of letters, a space, and a point.
# Words consist of one or more, but at most 20 letters. An input text
# consists of one or more words separated from each other by one or 
# more spaces and terminated by 0 or more spaces followed by a point.
# Input should be read from, and including, the first letter of the 
# first word, up to and including the terminating point. The output
# text is to be produced such that successive words are separated by
# a single space with the last word being terminated by a single point.
# Odd words are copied in reverse order while even words are merely echoed.

# For example, the input string
# whats the matter with kansas.

# Becomes:
# whats eht matter htiw kansas.

# PEDAC
# Problem
# words are 1-20 letters
# input text is one or more words separated by 0 or more spces followed by a point
# Input: string
# Output: string with word at odd indexs reversed

# Examples / Test Cases

# odd_words("whats the matter with kansas.") == "whats eht matter htiw kansas."
# odd_words("Normandy flubber is exquisit.") == "Normandy rebbulf is tisiuqxe."
# odd_words("Canyounotseethatthisismorethantwentyletters period.") == "Canyounotseethatthis ttelytnewtnahteromsi ers doirep"
# odd_words("Can you feel the love tonight  .") == "Can uoy feel eht love thginot."
# odd_words("No   Man   Shall EVER defeat  meee.") == "No naM Shall REVE defeat eeem."

# Data Structures
# Array
# Strings

# Algoritm
# define a method called 'odd_words' which accepts a string as an input
# Substitute periods for empty strings. (According to the instructions, it sounds like there is only one period in the whole input, which is at the end to denote the termination of the string. Therefore, we can substitute out all instances of a period because there is only one period. We will not be affecting any other word because there is only one period.)
# split the input string on spaces, into words.
# Iterate throug each word and if the word is more than 20 characters, split it into two words
# 



# Code

# def odd_words(string)
#   return "" if string == ""
#   string.gsub!(".", "")
#   words = string.split

#   until words.all? {|word| word.chars.size <= 20}
#     words.map! do |word|
#       if word.chars.length > 20
#         [word.chars[0...20].join, word.chars[20..-1].join]
#       else
#         word
#       end
#     end
#     words.flatten!
#   end
#   words.map!.with_index do |word, index|
#     if index.odd?
#       word.reverse
#     else
#       word
#     end
#   end
#   words.join(" ") + "."
# end


# p odd_words("whats the matter with kansas.") == "whats eht matter htiw kansas."
# p odd_words("Normandy flubber is exquisit.") == "Normandy rebbulf is tisiuqxe."
# p odd_words("Canyounotseethatthisismorethantwentyletters period.") == "Canyounotseethatthis ttelytnewtnahteromsi ers doirep."
# p odd_words("Can you feel the love tonight  .") == "Can uoy feel eht love thginot."
# p odd_words("No   Man   Shall EVER defeat  meee.") == "No naM Shall REVE defeat eeem."
# p odd_words("hello.") == "hello."
# p odd_words("hello .") == "hello."
# p odd_words("hello world.") == "hello dlrow."
# p odd_words("hello world .") == "hello dlrow."
# p odd_words("hello  world .") == "hello dlrow."
# p odd_words("hello  hello world ") == "hello olleh world."
# p odd_words("") == ""

# dog = ["Canyounotseethatthis ismorethantwentyletters", "period"]
# dog.replace([dog[0].split, dog[1, dog.length - 1]])
# p dog.flatten


def odd_words(string)
  return "" if string == ""
  string.gsub!(".", "")
  words = string.split

  words.each_with_index do |word, index|
    if word.chars.length > 20
      words[index..index] = [word.chars[0...20].join, word.chars[20..-1].join]
    end
  end
  words.map!.with_index do |word, index|
    if index.odd?
      word.reverse
    else
      word
    end
  end
  words.join(" ") + "."
end

p odd_words("whats the matter with kansas.") == "whats eht matter htiw kansas."
p odd_words("Normandy flubber is exquisit.") == "Normandy rebbulf is tisiuqxe."
p odd_words("Canyounotseethatthisismorethantwentyletters period.") == "Canyounotseethatthis ttelytnewtnahteromsi ers doirep."
p odd_words("Can you feel the love tonight  .") == "Can uoy feel eht love thginot."
p odd_words("No   Man   Shall EVER defeat  meee.") == "No naM Shall REVE defeat eeem."
p odd_words("hello.") == "hello."
p odd_words("hello .") == "hello."
p odd_words("hello world.") == "hello dlrow."
p odd_words("hello world .") == "hello dlrow."
p odd_words("hello  world .") == "hello dlrow."
p odd_words("hello  hello world ") == "hello olleh world."
p odd_words("") == ""


