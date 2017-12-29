#Clarification on exercise
puts 'Enter a range of two years to know which ones are leap years. Start year must be less than end year.'
puts 'Starting year:'
startYear = gets.chomp
puts 'Ending year:'
endYear = gets.chomp
puts 'The leap years between ' + startYear.to_s + ' and ' + endYear.to_s + ' are:'

while(startYear.to_i <= endYear.to_i)
    if(startYear.to_i % 400 == 0 or (startYear.to_i % 4 == 0 and startYear.to_i % 100 != 0))
      puts startYear.to_s
    else
    end
  startYear = startYear.to_i + 1 
end
