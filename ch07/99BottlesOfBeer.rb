beer = '99'
word = 'bottles'
while beer.to_i > 0
  puts beer.to_s + ' ' + word + ' of beer on the wall, ' + beer.to_s + ' ' + word + ' of beer.'
  puts 'Take one down, pass it around, '
  beer = beer.to_i - 1
  if beer == 1
     word = 'bottle'
  end
  if beer > 0
    puts beer.to_s + ' ' + word + ' of beer on the wall.'
    puts ' '
  else
    puts 'No more bottles of beer on the wall.'
  end
end
puts ''
puts 'No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.'
