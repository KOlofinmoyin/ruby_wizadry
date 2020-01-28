
hashery_menu = {
  eggs: 2,
  hash: 3,
  jam: 1,
  sausage: 2,
  biscuit: 1..3,
  ramdom_special=['Iyan & Egusi','Abula','Starch & Banga'].sample => 2.5
}

hashery_menu.each_key {|key| puts "#{key}"}
puts "Here are our items:"
hashery_menu.each {|item,price| puts "#{item}: £#{price}"}
puts "For biscuits you get the following prices depending on how much butter:"
hashery_menu[:biscuit].each {|item| puts "£#{format('%.2f', item)}"}
