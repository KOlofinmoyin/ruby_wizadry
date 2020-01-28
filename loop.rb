wanna_ride = true
stations = ['seven sisters', 'tottenham hale', 'blackhorse road', 'walthamstow']

until !wanna_ride
  puts 'What sort of trip is it?'
  trip = gets.chomp

unless trip == 'exit'
  if trip == 'single'
    puts 'Where ya headed friend?'
    destination = gets.chomp

    unless !stations.include? destination
      puts "Here are directions to #{destination}:"
      stations.each { |stop|
        puts stop
        break if destination == stop
      }
    else
      puts "Don't have directions for #{destination} see ya next time!"
        wanna_ride = false
    end

  elsif trip == 'rtn_trip'
    puts 'Where ya headed friend?'
    destination = gets.chomp
    unless !stations.include? destination
      puts "Here are directions to #{destination}:"
      stations.each { |stop|
        if stop == destination
          puts stations.index_of(destination).prev
          break if stations.first
        end
      }
    else
      puts "Don't have directions for #{destination} see ya next time!"
    wanna_ride = false
    end
  else
    puts "Don't have directions for #{destination} see ya next time!"
    wanna_ride = false
  end

  end
end
