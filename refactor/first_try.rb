def all_about_my_number number
  number ||= 42

  puts "My number is: #{number}"

  if number > 0 == true
    return 'Positive'
  elsif number < 0 == true
    return 'Negative'
  else
    return 'Zero'
  end
end
