# Create a pemdas array
# Loop through the numbers array
# If an element is a :* or a :/ symbol
    # initiate a 'start' variable to the current index
    # initiate a 'finish' variable to the current index
    # 'start' = current index - 1
    # 

require 'pry'

NUMBERS = {'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4,  'five' => 5, 'six' => 6, 
            'seven' => 7, 'eight' => 8, 'nine' => 9, 'ten' => 10, 'plus' => :+, 'minus' => :-, 
            'divided' => :/, 'times' => :*}

def operate!(order)
  loop do
    take_three = order.shift(3)
    order.unshift([take_three[0], take_three[2]].reduce(take_three[1]))
    break if order.size == 1
  end
end

def find_start_and_end_of_multiplication_and_division(english)
  current_index = 1
  start = current_index - 1
  final = current_index + 1
  loop do
    if english[current_index] == :* || english[current_index] == :/
      start = current_index - 1
      until english[current_index] == :+ || english[current_index] == :- || current_index >= english.size - 1
        final = current_index + 1
        current_index += 2
      end
      break
    else
      break if english.length - 1 == current_index 
      current_index += 2
    end
  end
  [start, final]
end

def computer(string)
  english = string.split(" ")
  english.delete('by')
  english.map! do |element|
    NUMBERS[element] if NUMBERS.keys.include?(element)
  end

  while english.any? {|element| element == :* || element == :/}
    break if !english.include?(:+) && !english.include?(:-)
    start, final = find_start_and_end_of_multiplication_and_division(english)
    multiplication_division = english[start, (final - start + 1)]
    operate!(multiplication_division)
    english = [english[0, start], multiplication_division, english[final + 1, english.size]].flatten
  end
    operate!(english)
    english[0]
end   

p computer("eight times four plus six divided by two minus two") == 33
p computer("one plus four times two minus two") == 7
p computer("nine divided by three times six") == 18
p computer("seven plus four divided by two") == 9
p computer("seven times four plus one divided by three minus two") == 26
p computer("one plus four times three divided by two minus two") == 5
p computer("nine divided by three times six") == 18




