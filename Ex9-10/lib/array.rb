class Array
  def sort_to_hash
    
    result = Hash.new {|h,k| h[k] = [] }
    
    each do |item|
      result[item.to_s.size].push(item)
    end

    result

  end
end