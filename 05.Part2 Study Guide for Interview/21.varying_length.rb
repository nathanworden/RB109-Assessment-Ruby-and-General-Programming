# Write a program that will generate random english math problems of 
# varying length. (But less than 20)

NUMBERS = %w(zero one two three four five six seven eight nine ten)
OPERATORS = %w(plus minus times divided)

def mathphrase
  phrase = [NUMBERS.sample]
  (1..20).to_a.sample.times do |num|
    phrase << OPERATORS.sample << NUMBERS.sample
  end
  phrase.map! do |word| 
    if word == 'divided'
      'divided by'
    else
      word
    end
  end
  phrase.join(" ")
end

p mathphrase