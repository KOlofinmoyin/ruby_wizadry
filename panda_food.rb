require './colorize'

class Food
  def serve
    puts "Food is ready!"
  end
end

class PandaFood < Food
  include Colorize
  attr_accessor :calories

  CALORIES_PER_SERVING = 1000

  def initialize
    @calories = CALORIES_PER_SERVING
  end

  def serve
    puts "One pipping hot serving of Panda food, coming up!"
  end

  def analyze
    puts "This food contains #{@calories} calories and is #{color(:sky_blue)}"
  end
end
