# If you go over the Articles written by students you won't have any surprises.
# Managing time may be the hardest part
# Around 20 questions 
# 3 hours



#1) What will this code return?
# Concept: pass by reference / value, variables as pointers?
def amethod(param)
  param + " Lee"
end

str = "Chris"
amethod(str)
p str
# Answer: 
# => "Chris"


#2) What will this code return?
# Concept: pass by reference / value, variables as pointers?
def amethod(param)
  param << " Lee"
end

str = "Chris"
p amethod(str)
# Answer:
# => "Chris Lee"


#3) What will this code return?
# Concept: pass by reference / value, variables as pointers?
def amethod(param)
  param << " Lee"
end

str = "Chris"
amethod(str)
p str
# Answer:
# => "Chris Lee"


#4) What will this code return?
# Concept: Method Return value vs. side-effects
def amethod(param)
  param + " loves basketball"
end

str = "Chris"
p amethod(str)
# Answer:
#=> "Chris loves basketball"


#5)What will this code return?
# Concept: Method return (we reassigned str to the return of amethod)
def amethod(param)
  param +  " loves basketball"
end

str = "Chris"
str = amethod(str)
p str
# Answer:
#=> "Chris loves basketball"


#6) What will this code return?
#Concept: pass by reference/value, variables as pointers
def amethod(param)
  param +=  " loves basketball"
end

str = "Chris"
amethod(str)
p str
# Answer:
#=> "Chris"


#7) What will this code return?
# Concept: pass by reference/value, variables as pointers, method side-effects vs return value
def amethod(param)
  param +  " plays basketball"
  param << " for U of A!"
end

str = "Chris"
amethod(str)
p str
# Answer:
# => "Chris for U of A!"



#8) What will this code return?
# # Concept: pass by reference/value, variables as pointers, method side-effects vs return value
def amethod(param)
  param +=  " plays basketball"
  param << " for U of A!"
end

str = "Chris"
amethod(str)
p str
# Answer:
# => "Chris"



#9) What will this code return?
# Concept: pass by reference/value, mutability, method side-effects vs return value
def amethod(param)
  param <<  " plays basketball"
  param << " for U of A!"
end

str = "Chris"
amethod(str)
p str
# Answer:
=> "Chris plays basketball for U of A!"



#10) What will this code return?
def amethod(param)
  param <<  " plays basketball"
  param += " for U of A!"
end

str = "Chris"
amethod(str)
p str
# Answer:
#=> "Chris plays basketball"



#11) What will this code return?
def amethod(param)
  param <<  " plays basketball"
  param += " for U of A!"
end

str = "Chris"
p amethod(str)
# Answer:
#=> "Chris plays basketball for U of A!"


#12) What will this code return?
def amethod(param)
  param = "Tealeaf"
end

str = "Chris"
amethod(str)
p param
# Answer:
#=> NameError (undefined local variable or method `param' for main:Object)



#13) What will this code return?
str = "Launch"
p str.+(" School")
# Answer:
#=> "Launch School"



#14) What will this code return?
def amethod(param)
  param << " School"
  param += " is a"
  param << " online school"
  param += " for developers."
end

str = "Launch"
amethod(str)
p str
# Answer:
#=> "Launch School"




#15) What will this code return?
# Concept: Inner scope can access variables initialized in an outer scope, but not vice versa.
str = "Chris"
3.times do |n|
  str = "Lee"
end

p str
#=> "Lee"



#16) What will this code return?
# Concept: Inner scope can access variables initialized in an outer scope, but not vice versa.
str = "Chris"
3.times do |n|
  str += "Lee"
end

p str
# Answer:
#n=> "ChrisLeeLeeLee"
 


#17) What will this code return?
str = "Mastery"
3.times do |n|
  str = "Based"
  str2 = "Learning"
end

p str
p str2
# Answer:
#=> "Based"
#=>  NameError (undefined local variable or method `str2' for main:Object)



#18) What will this code return?
# Concept: for..do/end did not create a new innner scope, because
# 'for' is part of the Ruby language and not a method invocation. Remember,
# the way to know if code delimited by {} or do/end is considered a block 
# (and thereby creates a new scope for variables), is seeing if the {}
# or do/end immediatley follows a method invocation.
colleges = ['UofA', 'UofO', 'OSU']
for school in colleges do
  str = "Chris Lee"
end

p str
# Answer:
# => "Chris Lee"


#19) What will this code return?
x = 0
3.times do
  x += 1
end
p x

# Answer:
# => 3


#20) What will this code return?
y = 0
3.times do
  y += 1
  x = y
end
puts x

# Answer:
# => undefined local variable or method


# 21) How many types of variables are there and what are their names?
# 5 types:
# Constants
# Global Variables
# Class Variables
# Instance Variables
# Local Variables 

# 22) True or False?:
# A block is part of the method invocation. Method invocation followed
# by curly braces or do..end is the way in which we define a block in Ruby.
# Essentially the blocks act as an argument to the method. In the 
# same way that a local variable can be passed as an argument to a 
# method at invocation, when a method is called with a block it acts
# as an argument to that method.

# 23) What will this code output?
def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end

#Answer:
# "written assessment"
# "interview"
