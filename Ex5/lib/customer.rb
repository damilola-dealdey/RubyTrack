class Customer
  @@counter = 0
  attr_accessor :name, :account_no, :balance 
  def initialize(name)
    @@counter += 1
    p name
    @name = name
    @account_no = @@counter
    @balance = Float(1000)
  end

  def to_s
    "#{name} with Account No. #{account_no} has #{balance} left."
  end

  def deposit(amount)
    if amount > 0      
      @balance += Float(amount)
      puts self
    else
      puts "Amount must be greater than 0"
    end
  end

  def withdraw(amount)
    if @balance > amount && amount > 0
      @balance -= Float(amount)
    elsif amount <= 0
      puts "Amount must be greater than 0"
    else 
      puts "Insufficeint balance"
      false
    end
    
    puts self
  end

  def transfer(other_customer, amount)
    if self.withdraw(amount)
      other_customer.deposit(amount)
    end
  end

end
