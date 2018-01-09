def shuffle some_array
  recursive_shuffle some_array, []
end
def recursive_shuffle unshuffled_array, shuffled_array
  if(unshuffled_array.length <= 0) #if only one word is entered
    return shuffled_array.push unshuffled_array
  end
  random_array = rand(unshuffled_array.length)
  counter = 0
  updated_array = []
  unshuffled_array.each do |check|
    if(counter == random_array)
      shuffled_array.push check
    else
      updated_array.push check
    end
      counter += 1
  end
  shuffled_array 
  recursive_shuffle updated_array, shuffled_array
end
puts 'Write words you want to be shuffled.'
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
puts 'The word(s) shuffled are:'
puts(shuffle(list))
