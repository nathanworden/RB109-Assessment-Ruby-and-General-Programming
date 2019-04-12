#1) What will this code return?
def amethod(param)
  param + " Lee"
end

str = "Chris"
amethod(str)
p str
# Answer: 
# => "Chris"


#2) What will this code return?
def amethod(param)
  param << " Lee"
end

str = "Chris"
p amethod(str)
# Answer:
# => "Chris Lee"


#3) What will this code return?
def amethod(param)
  param << " Lee"
end

str = "Chris"
amethod(str)
p str
# Answer:
# => "Chris Lee"


#4) What will this code return?
def amethod(param)
  param + " loves basketball"
end

str = "Chris"
p amethod(str)
# Answer:
#=> "Chris loves basketball"


#5)What will this code return?
def amethod(param)
  param +  " loves basketball"
end

str = "Chris"
str = amethod(str)
p str
# Answer:
#=> "Chris loves basketball"


#6) What will this code return?
def amethod(param)
  param +=  " loves basketball"
end

str = "Chris"
amethod(str)
p str
# Answer:
#=> "Chris"


#7) What will this code return?
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
str = "Chris"
3.times do |n|
  str = "Lee"
end

p str








