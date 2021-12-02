def depth_increase_count measures
  measures.each_with_index.count do |depth, index|
    if index == 0
      false
    else
      depth > measures[index-1]
    end
  end
end

