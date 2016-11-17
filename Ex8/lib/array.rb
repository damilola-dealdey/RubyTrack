class Array
  def power(raise_to)
    result = []

    each do |item|
      result << item ** raise_to
    end

    result

  end
end