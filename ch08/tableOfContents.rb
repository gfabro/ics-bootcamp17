chapNames = ['Chapter 1: Getting Started', 'Chapter 2: Numbers        ', 'Chapter 3: Letters        ']
pageNum =   ['                   page  1', '                   page  9', '                   page 13']

lineWidth = 57
puts(   'Table of Contents         '.center(lineWidth))
puts ''

puts chapNames[0].ljust(lineWidth/3) + pageNum[0].rjust(lineWidth/3)
puts chapNames[1].ljust(lineWidth/3) + pageNum[1].rjust(lineWidth/3)
puts chapNames[2].ljust(lineWidth/3) + pageNum[2].rjust(lineWidth/3)
