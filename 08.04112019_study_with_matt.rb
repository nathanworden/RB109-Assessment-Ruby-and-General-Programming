# Problem

# width, length, heigth
# rectangle
# Layer below is 1 larger, width and lendgth
# Goal is to return total number of blocks
# 



# Algorightm
# Get the  first layer, w * l
# h number of times, create a new array where the dimensions are increated by 1 each time
# multiply the inside of thes arrays and sum those.


# Code

# def pyramid(w, l, h)
#   layers = []
#   h.times do |num|
#     layers << [w * l]
#     w += 1
#     l += 1
#   end
#   layers#.flatten.reduce(:+)
# end


def pyramid(w, l, h)
  ((w * h) * (l * h) * h) * (1/3.0)
end

p pyramid(2, 4, 1000000000)



k