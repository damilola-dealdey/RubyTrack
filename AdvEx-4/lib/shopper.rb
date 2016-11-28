class Shopper
  def initialize &block
    @shopping_list = Hash.new(0)
    yield(self)
  end

  def add item_name, quantity
    @shopping_list[item_name] += quantity
  end

  def to_s
    puts 'My Shopping List'
    @shopping_list.each { |k,v| puts "Get #{v} #{k}"}
  end

end

