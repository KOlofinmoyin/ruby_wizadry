class Ballad
  attr_accessor :title, :lyrics

  @@number_of_ballads = 0

  def initialize(title,lyrics='Tralala')
    @title = title
    @lyrics = lyrics
    @@number_of_ballads += 1
  end

  class << self
    def number_of_ballads
      @@number_of_ballads
    end
  end

end
