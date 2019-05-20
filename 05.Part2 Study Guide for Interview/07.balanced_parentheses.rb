# PEDAC
# Write a method that takes a string and returns a boolean indicating
# whether this string has a balaced set of parentheses

# balancer("hi") == true
# balanceer("(hi") == false
# balanceer("(hi)") == true
# balancer(")hi(") == false

# Data Structures
# Arrays

# Algorithm
# initiate an open_paren_counter to 0
# initiate a closed_paren_counter to 0
# iterate through the string
# If a character is an open parentheses, incremnent the open_paren_counter by 1
# If a characer is a closed parentheses, increment the closed_paren_counter by 1
# If the closed_paren_counter is ever greater than the open_paren_counter, return false
# At the end of the iteration, if the two counters equal each other, return true

# Code

def balancer(string)
  open_paren_counter = 0
  closed_paren_counter = 0
  string.chars.each do |char|
    open_paren_counter += 1 if char == "("
    closed_paren_counter += 1 if char == ")"
    return false if closed_paren_counter > open_paren_counter
  end
  return false if open_paren_counter != closed_paren_counter
  true
end

p balancer("hi") == true
p balancer("(hi") == false
p balancer("(hi)") == true
p balancer(")hi(") == false
p balancer("((()(())))") == true
p balancer("((()))())()(())))") == false