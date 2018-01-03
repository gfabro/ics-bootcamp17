def old_roman_numeral number
  old_r = ''
  old_r = old_r + 'M' * (number / 1000  )
  old_r = old_r + 'D' * (number % 1000 / 500)
  old_r = old_r + 'C' * (number % 500  / 100)
  old_r = old_r + 'L' * (number % 100  / 50 )
  old_r = old_r + 'X' * (number % 50   / 10 )
  old_r = old_r + 'V' * (number % 10   / 5  )
  old_r = old_r + 'I' * (number % 5    / 1  )

  puts number.to_s + ' in old Roman numerals is ' + old_r
end
old_roman_numeral(2018)
