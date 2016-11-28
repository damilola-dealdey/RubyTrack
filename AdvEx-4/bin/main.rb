require_relative('../lib/shopper')

shopping_list = {
  "Toothpaste" => 2,
  "Computer" => 1
}

shopper = Shopper.new do |s|
  shopping_list.each { |k,v| s.add k,v  } 
end

puts shopper.to_s