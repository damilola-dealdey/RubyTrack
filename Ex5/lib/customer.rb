class Customer
  @@Counter = 0
  attr_accessor :name, :account_no, :balance 
  def initialize(name)
    @@Counter += 1
    p name
    @name = name
    @account_no = @@Counter
    @balance = Float(1000)
  end

  def to_s
    "#{self.name} with Account No. #{self.account_no} has #{self.balance} left."
  end

  def deposit(amount)
    @balance += Float(amount)
    puts self
  end

  def withdraw(amount)
    @balance -= Float(amount)
    puts self
  end

  def transfer(other_customer, amount)
    self.withdraw(amount)
    other_customer.deposit(amount)
  end

end
