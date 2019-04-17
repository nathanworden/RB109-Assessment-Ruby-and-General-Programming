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


# 24) What is returned by this code?
# Concept: Outer scope variables can be accessed by inner scope
a = 1

loop do 
  puts a
  a = a + 1
  break
end

p a
# Answer:
# => 2
#Notes "a" was re-assigned in the inner scope


#25) What is returned by this code?
# Concept: inner scope variables cannot be acced in outer scope
loop do
  b = 1
  break
end

p b
#Answer: 
# NameError: undefined local variable or method `b` for main:Object


# 26) What does the following code output?
# Concept: Peer scopes do not conflict
2.times do
  a = 'hi'
  puts a
end

loop do
  puts a
  break
end

puts a

# Answer:
# 'hi'
# 'hi'
# NameError: undefined local variable or method `a` for main:Object
# NameError: undefined local variable or method `a` for main:Object
# Notes: Peer blocks cannot reference variables initialized in other blocks.


# 27) What will be output by the following code?
a = 1

loop do
  b = 2

  loop do
    c = 3
    puts a
    puts b
    puts c
    break
  end

  puts a
  puts b
  puts c
  break
end

puts a
puts b
puts c

# Answer
# 1
# 2
# 3
# 1
# 2
# NameError
# 1
# NameError
# NameError



# 28) What will the following code output?
# Concept: Variable shadowing 
n = 10

[1, 2, 3].each do |n|
  puts n
end

# Answer:
# 1
# 2
# 3
# Notes: variable shadowing is when an inner scoped variable is
# given the same name as an outer scoped variable. When this happens
# it prevents access to the outer scope local variable.


# 29) What is output by the following code?
# Concept: Variable Shadowing
n = 10

1.times do |n|
  n = 11
end

puts n

# Answer:
# 10
# Notes: Variable shadowing prevents us from making chages to the
# outer scoped variable.



# 30) What is returned by the following code?
# Concept: A method definition can't access local variables in
# another scope.
a = 'Chris'

def some_method
  puts a
end

some_method

# Answer:
# NameError (undefined local variable or method `a' for main:Object)



# 31) What is returned by the following code?
# Concept: A method definition can access objects passed in
def some_method(a)
  p a
end

some_method(5)

#Answer:
# => 5
# Notes: The integer 5 is passed into some_method as an argument,
# assigned to the method parameter, a, and thus made available
# to the method body as a local variable. That's why we can call
# p a from within the method definition.



# 32) What is output and what is returned by the following code?
# Concept: The rules of scope for a method invocation with a 
# block remain in full effect even if we're working inside a 
# method definition.
def some_method
  a = 1
  5.times do
    puts a
    b = 2
  end

  puts a
  puts b
end

some_method

#Answer:
# 1
# 1
# 1
# 1
# 1
# 1
# NameError (undefined local variable or method `b' for main:Object)


# 33) What is printed out by this code?
# Concept: Constants
USERNAME = 'Batman'
def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate
#Answer:
# Logging in Batman


# 34) What is printed out by this code?
# Concept: Constants
loop do 
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM

# Answer
# "Phoenix Suns"



# 34) What will this code output? And what will it return?
# Concept: Method parameter not used
def greetings(str)
  puts "Goodbye"
end
word = "Hello"
greetings(word)

#Answer
# Outputs 'Goodbye'
# Returns: nil



# 35) What will this code output? And what will it return?
# Concept: Method parameter used
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)

#Answer: 
# Outputs 'Hello'
# Outputs 'Goodbye'
# Returns: nil


# 36) What will the following code return?
# Concept: Block not executed
def greetings
  p "Goodbye"
end

word = "Hello"

greetings do
  p word
end

# Answer:
# => "Goodbye"



#37) What will the following code output?
# Concept: block executed

def greetings
  yield
  p "Goodbye"
end

word = "Hello"

greetings do
  p word
end

# Answer:
# "Hello"
# "Goodbye"
# Notes: The yield keyword is what controls the interaction with the 
# block, in this case it executes the block once. Since the block
# has access to the local variable word, Hello is output when the
# block is executed. Don't focus here on what yield is or how it works;
# writing methods that take blocks is explored at depth in a later course.
# The important take-away for now is that blocks and methods can
# interact with each other; the level of that interaction is set
# by the method definition and then used at method invocation.



# 38) What will the following code output?
# Concept: Methods can access local variables through interaction with blocks
a = "Chris"
[1, 2, 3].map { |num| a}

#Answer:
# => ["Chris", "Chris", "Chris"]
# Notes: The Array#map method is defined in such a way that it 
# uses the return value of the block to perform transformation
# on each element in an array. In the above example, #map doesn;t
# have direct access to 'a' but it can use the value of 'a' to perform
# transfermation on the array since the block can access 'a' and
# reutnrs it to #map.


# Review

# Method definitions cannot directly access local variables 
# initialized outside of the method definition, nor can local variables
# initialized outside of the method definition be reassigned from
# within it. A block can access local variables initialized outside
# and can reassign those variables. We already know that methods can
# access local variables passed in as arguments, and now we have
# seen that methods can access local variables through ineraction 
# with blocks.

# Given this additional context, we can think of method definition
# as setting a certain scope for any local vaiables in terms of the
# parameters that the method definition has, what it does with
# those parameters, and also how it interacts (if at all) with a block
# We can think of method invocation as using the scope set by
# the method definition. If the method is defined to use a block,
# then the scope of the block can provide additional flexibility 
# in terms of how the method invocation interacts with its 
# surroundings

# Key points:
#  - The def..end construciton in Ruby is method definition
#  - Referencing a method name, either of an exisiting method or 
# subsequent to definition, is method invocation
# - Method invocation followed by {..} or do..end defines a block;
# the block is part of the method invocation
# - Method definition sets a scope for local variables in terms of
# parameters and interaction with blocks
# - Method invocation uses the scope set by the method definition.



# 39) What does this code print out?
# Concept: Pass by reference / value
def change_name(name)
  name = 'bob'
end

name = 'jim'
p change_name(name)
# Answer:
# 'bob'




# 40) What does this code print out?
# Concept: Pass by reference / value
def change_name(name)
  name = 'bob'
end

name = 'jim'
change_name(name)
puts name

# Answer:
# 'jim'
# Notes: The code example above has two different local variables
# named name. There is one scoped within the method, and there 
# is one in the main scope. This is not variable shadowning,
# because the main scope variable is not accessible to the method
# Within the method, we could have named the variable something other 
# than name.



# 41) What does this code print out?
# Concept: Mutation, pass by reference / value. When an operation
# within the method mutates the caller, it will affect the
# original object.
def cap(str)
  str.capitalize!
end

name = 'jim'
cap(name)
puts name

# Answer:
# "Jim"



# 42) What does this code print out?
# Concept: Mutation, pass by reference / value.
def cap(str)
  str.capitalize
end

name = 'jim'
cap(name)
puts name

# Answer:
# "jim"



# 43)  What does this code print out?
# Concept: Mutation, pass by reference / value
def add_name(arr, name)
  arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect

# Answer: 
# => ["bob", "kim", "jim"]



# 44)  What does this code print out?
# Concept: pass by reference / value
def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_names(names, 'jim')
puts names.inspect

# Answer: 
# > ["bob", "kim"]
# Notes: This code doesn't change the names array. When we use
# + to concatenate two arrays together, it is returnning a new
# array and not mutating the original. 




# 45)  What does this code print out?
# Concept: pass by reference / value
def add_name(arr, name)
  arr = arr << [name]
end

names = ['bob', 'kim']
add_names(names, 'jim')
puts names.inspect

# Answer: 
# > ["bob", "kim", "jim"]
# Notes: This code DOES change the names array. When we use << to
# append a new value into an array, it is mutating the original
# array and not returning a new array.


# 46) What does the following code return?
# Concept: Variables as pointers
a = "hi there"
b = a
a = "not here"
p b

# Answer:
# => "hi there"


# 47) What does the following code return?
# Concept: Variables as pointers
a = "hi there"
b = a
a << ", Bob"
p b

# Answer:
# "hi there, Bob"
# Notes: Variables are pointers to physical space in memory


# 48) What does the following code print out?
# Concept: Variables as pointers
a = [1, 2, 3, 3]
b = a
c = a.uniq

p a
p b
p c

# Answer:
# [1, 2, 3, 3]
# [1, 2, 3, 3]
# [1, 2, 3]


# 48) What does the following code print out?
# Concept: Variables as pointers
a = [1, 2, 3, 3]
b = a
c = a.uniq!

p a
p b
p c

# Answer:
# [1, 2, 3]
# [1, 2, 3]
# [1, 2, 3]



# 49) What does p a return in the follwing code?
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
p a

#Answer:
# => ['a', 'b', 'c']




# 50) What does p a return in the follwing code?
def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
p a

#Answer:
# => ['"I like the letter: a', '"I like the letter: b', '"I like the letter: c']



# 51) What is reuturned by this code?
# Concept: each method
def a_method
  [1, 2, 3].each do |num|
    puts num * 2
  end
end

a_method

#Answer:
# => [1, 2, 3]



# 52) What is returned by this code?
# Concept: each method. Implicit return

def a_method
  [1, 2, 3].each do |num|
    puts num * 2
  end

  puts 'hi'
end

a_method

# Answer:
# => nil


# 53) What is returned by this code?
# Concept: select method.

[1, 2, 3].select do |num|
  num + 1
end

# Answer:
# => [1, 2, 3]



# 54) What is returned by this code?
# Concept: select method.

[1, 2, 3].select do |num|
  num + 1
  puts num
end

# Answer:
# => []


# 55) What is returned by this code?
# Concept: map method

[1, 2, 3].map do |num|
  num * 2
end

# Answer:
# => [2, 4, 6]


# 56) What is returned by this code?
# Concept: map method

[1, 2, 3].map do |num|
  num.odd?
end

# Answer:
# => [true, false, true]


# 57) What is returned by this code?
# Concept: map method

[1, 2, 3].map do |num|
  'hi'
end

# Answer:
# ['hi', 'hi', 'hi']



# 58) What is returned by this code?
a = 'Chris'
b = a
a += b

p a

# Answer:
# "ChrisChris"




# Examine the code example below. The last line outputs the 
# String 'Hi' rather than the String 'Hello'. Explain what is 
# happening here and identify the underlying principle that this 
# demonstrates.

greeting = 'Hello'

loop do
  greeting = 'Hi'
  break
end

puts greeting

# My Answer:
# On line 1 the local variable `greeting` is initialized to reference
# a string object with the value 'Hello'. On line 3 the loop method
# is called and a block is passed to it as an argument. In the 
# block on line 4 the variable `greeting` is reassigned to 
# reference a new object with the value 'Hi'. On line 5 the keyword
# break ends the loop. On line 8 the puts method is invoked and 
# the variable greeting is passed in as an argument. puts greeting
# outputs 'Hi' and returns nil. This is an example of how variables
# initialized in an outer scope are available inside an inner scope.


# Book Answer:
# The local variable greeting is assigned to the String 'Hello'
 # on line 1. The do..end alongside the loop method invocation 
 #  on lines 3 to 6 defines a block, within which greeting is 
 #  reassigned to the String Hi on line 4. The puts method is 
 #  called on line 8 with the variable greeting passed to it as 
 #  an argument; since greeting is now assigned to 'Hi', this is
 #   what is output. This example demonstrates local variable 
 #   scoping rules in Ruby; specifically the fact that a local 
 #   variable initialized outside of a block is accessible inside 
 #   he block.





