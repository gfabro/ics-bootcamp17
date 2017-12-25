puts 'Hi user! What is your favorite number?'
favNumber = gets.chomp
name = favNumber.to_i + 1
puts 'That is a wonderful number, but a bigger and better favorite number should be ' + name.to_s + '. :)'
