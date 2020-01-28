class Account
  attr_accessor :username, :password
  def initialize(username, password)
    @username = username
    @password = password
  end
end

class SuperSecretAccnt < Account
  def initialize(username, password)
    @reset_attempts = 0
    super(username, password)
  end

  def password
    puts "The password is secret!"
  end

  def password=(new_password)
    while @reset_attempts < 3
      puts "Current password?:"
      current_password = gets.chomp
      if current_password == @password
        puts "Authentication successful!"
        puts "Your new password is now: #{new_password}."
        @password = new_password
        break
      else
        @reset_attempts += 1
        puts "That's not the right password."
        if @reset_attempts == 2
        puts "You now have #{3 - @reset_attempts} attempt of 3 left!"
      elsif @reset_attempts == 0
        puts "You no longer have any reset_attempts left! Goodbye!"
        break
      else
        puts "You now have #{3 - @reset_attempts} attempts of 3 left!"
        end
      end
    end
  end
end
