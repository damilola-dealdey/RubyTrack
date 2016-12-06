class NotCapitalizedException < StandardError
  def initialize(msg="First letter of the string should be capital")
    super
  end
end