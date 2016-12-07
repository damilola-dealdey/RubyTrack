class Array
  def sort_to_hash
    
    result = Hash.new {|h,k| h[k] = [] }
    
    each do |item|
      result[item.to_s.size].push(item)
    end

    result

  end

  def group_by_parity
    result = Hash.new { |h,k| h[k] = [] }

    sort_to_hash.inject(0) { |c, (k,v)| result[k.parity] << v }

    result
  end

end