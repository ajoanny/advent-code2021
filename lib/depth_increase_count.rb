def depth_increase_count measures
  measures.each_with_index.count do |depth, index|
    if index == 0
      false
    else
      depth > measures[index-1]
    end
  end
end

def depth_increase_count_pattern measures
  case measures
    in []
      0
    in [_]
      0
    in [a, b, *]
      if a < b
        1 + depth_increase_count_pattern(measures[1..-1])
      else
        depth_increase_count_pattern measures[1..-1]
      end
  end
end

