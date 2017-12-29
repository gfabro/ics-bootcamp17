puts 'Tell grandma something. You can only end the conversation once you shout "BYE" '
message = ''
while message != 'BYE'
  message = gets.chomp
    if(message == 'BYE'.chomp)
      puts 'GOODBYE DEAR!'
      break
    elsif(message == message.upcase)
      year = rand(21) + 1930
      puts 'NO, NOT SINCE ' + year.to_s + '!'
    else
      puts 'HUH?! SPEAK UP, HONNEY!'
    end
end
