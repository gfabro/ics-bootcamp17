lineWidth = 57
puts(   'Table of Contents         '.center(lineWidth))
puts ''
chap1 = 'Chapter 1: Getting Started'
page1 = '                   page  1'
chap2 = 'Chapter 2: Numbers        '
page2 = '                   page  9'
chap3 = 'Chapter 3: Letters        '
page3 = '                   page 13'
puts chap1.ljust(lineWidth/3) + page1.rjust(lineWidth/3)
puts chap2.ljust(lineWidth/3) + page2.rjust(lineWidth/3)
puts chap3.ljust(lineWidth/3) + page3.rjust(lineWidth/3)
