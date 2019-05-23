# PEDAC

# PROBLEM 
# Write a method that will return all palindromes within a string

# Examples / Test Casses

# p palindromes("ppop") == ["pp", "pop"]


def substrings(string)
  output = []
  (string.length - 1).times do |front_index|
    (string.length - front_index - 1).times do |num_of_chars|
      num_of_chars += 2
      output << string[front_index, num_of_chars]
    end
  end
  output
end



# def palindromes(string)
#   subs = substrings(string)
#   subs.select {|sub| sub == sub.reverse}
# end


# p palindromes("ppop") == ["pp", "pop"]


def palindromes(string)
  subs = substrings(string)
  reverse_subs = substrings(string)
  reversed = reverse_subs.map do |sub|
    reversed = []
    sub.size.times do |index|
      reversed.unshift(sub.chars[index])
    end
    reversed.join
  end
  subs.select.with_index {|sub, index| sub == reversed[index]}
end

p palindromes("ppop") == ["pp", "pop"]

def largest_palindrom(array)
  sizes = array.map {|element| element.size}
  
  end
end

p largest_palindrome(["pp", "pop"]) == 













