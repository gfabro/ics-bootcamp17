def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if (reply == 'yes')
         return true
      else (reply == 'no')
         return false
       end
       break
    else
      puts 'Plese answer "yes" or "no" :)'
    end
  end
end

puts 'Hello, and thank you for taking the time to help me with this experiment.'
puts 'My experiment has to do with the way people feel about Mexican food.'
puts 'Just think about Mexican food and try to answer every question honestly,
with either a "yes" or a "no". My experiment has nothing to do with bed-wetting.'
ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wet_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
puts 'Just a few more questions...'
ask 'Do you like eating sopapillas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for taking the time to help with this experiment.'
puts 'In fact, this experiment has nothing to do with Mexican food.'
puts 'It is an experiment about bed-wetting.'
puts 'The Mexican food was just there to catch you off guard in the hopes that
     you would answer more honestly. Thanks again.'
puts
puts 'The answer to the wetting the bed question is ' + wet_bed.to_s 
