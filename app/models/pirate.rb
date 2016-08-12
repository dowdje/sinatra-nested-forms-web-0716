class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(parameters)
    @name = parameters[:name]
    @weight = parameters[:weight]
    @height = parameters[:height]
    @@all << self
  end

  def self.all
    @@all
  end
end