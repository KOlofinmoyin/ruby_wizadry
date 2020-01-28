class Monkey
  @@number_of_monkeys = 0
  @@number_of_bananas = 10

  def initialize
    @@number_of_monkeys +=1
  end

  def eat_banana
    @@number_of_bananas -= 1
    puts "Yum! Tasty - banana eaten. You have #{Monkey.number_of_bananas} possible bananas left."
  end

  class << self
  def number_of_monkeys
    @@number_of_monkeys
  end

  def number_of_bananas
    @@number_of_bananas
  end

  end
end
