def shuffle some_array
  recursive_shuffle some_array, []
end
def recursive_shuffle unshuffled_array, shuffled_array
    while unshuffled_array.length > 0
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
        unshuffled_array = updated_array
    end
    shuffled_array
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
