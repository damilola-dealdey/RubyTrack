def group_hash hash_to_group
  result = Hash.new { |h,k| h[k] = [] }

  hash_to_group.inject(0) { |c, (k,v)| result[k.parity] << v }

  result
end