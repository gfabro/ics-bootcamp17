def roman_numeral number
  new_r = ''
  thousands = (number /1000)
  hundreds  =  (number % 1000 / 100)
  tens      = (number % 100 / 10)
  ones      = (number % 10 )
  
  new_r = new_r + 'M' * thousands
    if(hundreds == 4)
      new_r = new_r + 'CD'
    elsif(hundreds == 9)
      new_r = new_r + 'CM'
    else
      new_r = new_r + 'D' * (number % 1000 / 500)
      new_r = new_r + 'C' * (number % 500  / 100)
    end
    if(tens == 4)
      new_r = new_r + 'XL'
    elsif(tens == 9)
      new_r = new_r + 'XC'
    else
      new_r = new_r + 'L' * (number % 100  / 50 )
      new_r = new_r + 'X' * (number % 50   / 10 )
    end
    if(ones == 4)
      new_r = new_r + 'IV'
    elsif(ones == 9)
      new_r = new_r + 'IX'
    else
      new_r = new_r + 'V' * (number % 10   / 5  )
      new_r = new_r + 'I' * (number % 5    / 1  )
    end

  puts number.to_s + ' in modern Roman numerals is ' + new_r
end
roman_numeral 2018
