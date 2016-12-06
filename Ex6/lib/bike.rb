require_relative('vehicles')
class Bike < Vehicle
  attr_reader :dealer
  def initialize(name, price, dealer)
    @dealer = dealer
    super name, price
  end

  def to_s
    super + "\nDealer: #{dealer}"
  end
end
