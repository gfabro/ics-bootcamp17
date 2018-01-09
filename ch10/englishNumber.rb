def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  num_string = ''
  ones_place = ['one'      , 'two'     , 'three'   , 'four'   , 'five'    ,
                'six'      , 'seven'   , 'eight'   , 'nine'    ]
  tens_place = ['ten'      , 'twenty'  , 'thirty'  , 'forty'   , 'fifty'  ,
                'sixty'    ,'seventy'  , 'eighty'  , 'ninety'  ]
  teenagers  = ['eleven'   , 'twelve'  , 'thirteen', 'fourteen', 'fifteen',
                'sixteen'  ,'seventeen', 'eighteen', 'nineteen']
  expanded   = [['hundred',  2], ['thousand',  3], #number represents amount of zeros
                ['million',  6], ['billion',  9],
                ['trillion', 12]]
# "left" is how much of the number we still have left to write out.
# "write" is the part we are writing out right now.
left = number
  while expanded.length > 0
    exp_array = expanded.pop
    exp_expanded = exp_array[0] #either trillion, billion, etc.
    exp_base = 10 ** exp_array[1]
    write = left/exp_base # How many expanded left?
    left = left - write*exp_base # Subtract off expanded
      if write > 0
        prefix = english_number write
        num_string = num_string + prefix + ' ' + exp_expanded
          if left > 0
            num_string = num_string + ' '
          end
      end
  end
write = left/10 # How many tens left?
left = left - write*10 # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end
write = left # How many ones left to write out?
left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
# Now we just return "num_string"...
num_string
end
puts 'Enter a number. I\'ll write it in word form:'
    number = gets.chomp
puts(english_number(number.to_i)) 
