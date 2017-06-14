class MetsScraper::Player

  attr_accessor :name, :number, :bt, :height, :weight, :DOB

  @@all = []

  def initialize(name, number, bt, height, weight, DOB)
    @name = name
    @number = number
    @bt = bt
    @height = height
    @weight = weight
    @dob = dob
  end
end
