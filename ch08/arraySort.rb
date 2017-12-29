puts 'Write words you want to be sorted in alphabetical order.'
list = []
while true
  word = gets.chomp
  if (word != ''.chomp)
    list.push word
  else
    break
  end
end
  puts ''
  puts 'The word(s) alphabetically are:'
  puts list.sort 
