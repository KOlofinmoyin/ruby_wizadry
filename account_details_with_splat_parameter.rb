require 'date'

def account(name, age, curr_address, balance, *prev_addresses)
  @balance = balance
  
  @today_date = DateTime.now.strftime('%d/%m/%Y')

  puts "Customer name: #{name}"

  puts age > 18 ? "Account type: Advantage gold" : "Account type: Student Saver accnt."

  puts "Current address: #{curr_address}."

  puts "Your balance on #{@today_date} is: £#{format('%.2f', @balance)}."

  unless !block_given?
    yield prev_addresses
  else
    prev_addresses
  end
end
