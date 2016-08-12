class Ship
  attr_accessor :name, :type, :booty
  @@all = []
  def initialize(arguments)
    @name = arguments[:name]
    @type = arguments[:type]
    @booty = arguments[:booty]
    @@all << self
  end

  def self.clear
    @@all.clear
  end

  def self.all
    @@all
  end
end