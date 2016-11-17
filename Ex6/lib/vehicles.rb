class Vehicle
  attr_reader :name
  attr_accessor :price
  def initialize(name, price)
    @name =  name
    @price = price
  end

  def to_s
    "Vehicle: #{self.name}\nPrice: #{self.price}"
  end
end

class Bike < Vehicle
  attr_reader :dealer
  def initialize(name, price, dealer)
    @dealer = dealer
    super name, price
  end

  def to_s
    super.to_s + "\nDealer: #{self.dealer}"
  end
end
