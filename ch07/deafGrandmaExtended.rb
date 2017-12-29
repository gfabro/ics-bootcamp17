#HOW TO PROGRAM WITHOUT break : next
puts 'Tell grandma something. You can only end the conversation once you shout "BYE" '
message = ''
bye = 0
  while bye < 3
    message = gets.chomp
      if message == 'BYE'.chomp
        bye += 1 #Learned this from another program (Java NetBeans)
        bye == 3
      elsif(message == message.upcase)
        bye = 0
          year = rand(21) + 1930
          puts 'NO, NOT SINCE ' + year.to_s + '!'
        else
          bye = 0
          puts 'HUH?! SPEAK UP, HONNEY!'
        end
end
puts 'GOODBYE DEAR!'
