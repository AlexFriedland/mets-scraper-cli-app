class MetsScraper::Player

  attr_accessor :name, :number, :bt, :height, :weight, :dob

  @@all = []

  def initialize(name, number, bt, height, weight, dob)
    @name = name
    @number = number
    @bt = bt
    @height = height
    @weight = weight
    @dob = dob
  end

  def self.all
    @@all
  end
end
