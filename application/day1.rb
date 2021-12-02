require './lib/depth_increase_count'

measures = []
File.readlines('./files/day1.txt').each do |line|
  measures << line.to_i
end

puts(depth_increase_count measures)