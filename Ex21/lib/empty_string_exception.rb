class EmptyStringException < StandardError
  def initialize(msg="String cannot be empty")
    super
  end
end