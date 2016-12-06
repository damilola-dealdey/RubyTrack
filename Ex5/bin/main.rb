require_relative('../lib/customer')
john = Customer.new('John Smith')
paul = Customer.new('Paul Smith')
john.transfer(paul,1500);
john.deposit(200)