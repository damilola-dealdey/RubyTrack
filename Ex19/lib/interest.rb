class Interest
  attr_reader :rate
  def initialize &block
    @rate, @block = 10.0, block
  end

  def calculate
    print "Please provide the principal amount: "
    pr = Float(gets)
    print "Please provide the time (in years): "
    t = Float(gets)
    @block.call(pr, t, @rate)
  end

end
