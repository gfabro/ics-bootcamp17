def sort some_array
  recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array
  if(unsorted_array.length == 0) #if only one word is entered
    return sorted_array.push unsorted_array
  end
  smallest_word = unsorted_array.pop
  words_left = []
  unsorted_array.each do |check|
    if check < smallest_word
      words_left.push smallest_word
      smallest_word = check
    else
      words_left.push check
    end
  end
  sorted_array.push smallest_word
  recursive_sort words_left, sorted_array
end
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
puts(sort(list)) 
