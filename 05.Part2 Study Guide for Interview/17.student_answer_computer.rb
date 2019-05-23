# convert english phrase into a mathematical expression, step by step

def computer(english)
  nums = {
    'zero' => 0,
    'one' => 1,
    'two' => 2,
    'three' => 3,
    'four' => 4,
    'five' => 5,
    'six' => 6,
    'seven' => 7,
    'eight' => 8,
    'nine' => 9,
    'ten' => 10
  }

  nums.each do |word, num|
    english.gsub!(word, num.to_s)
  end

  words = english.split(' ')
  words.delete('by')

  loop do
    break if !words.include?('plus') && 
             !words.include?('minus') && 
             !words.include?('divided') &&
             !words.include?('times')

    first_three = words.take(3)

    first = first_three[0].to_i
    operation = first_three[1]
    second = first_three[2].to_i

    solution = case operation
               when 'plus'
                 first + second
               when 'minus'
                 first - second
               when 'times'
                first * second
               when 'divided'
                first / second
               end
    words.shift(3)
    words.unshift(solution)
  end
  return words.first
  end

p computer("two plus two") == 4
p computer("seven minus six") == 1
p computer("zero plus eight") == 8
p computer("two plus two minus three") == 1
p computer("three minus one plus five minus 4 plus six plus 10 minus 4") == 15
p computer("eight times four plus six divided by two minus two") == 17 # not 33
p computer("one plus four times two minus two") == 8 # not 7
p computer("nine divided by three times six") == 18







