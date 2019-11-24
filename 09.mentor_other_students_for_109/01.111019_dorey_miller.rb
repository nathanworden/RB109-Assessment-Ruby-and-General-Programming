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


# def duplicate_count(str)
#   str.downcase.chars.sort.chunk_while {|i, j| i == j}.to_a.select {|arr| arr.size > 1}.size
# end

# def duplicate_count(str)
#   arr = str.downcase.chars
#   counts = {}
#   arr.each do |char|
#     if counts.include?(char)
#       counts[char] += 1
#     else
#       counts[char] = 1
#     end
#   end
#   counts.each_value.select {|num| num > 1}.size
# end

def duplicate_count(str)
  downcase_str = str.downcase.chars
  char_count = 0

  downcase_str.select do |char|
    downcase_str.count(char) > 1
  end.uniq.size
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2


