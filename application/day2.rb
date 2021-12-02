require './lib/submarine'
require './lib/submarine_command'

submarine = Submarine.new

def create_command line
  data = line.split(' ')
  direction = data.first
  distance = data.last.to_i

  case direction
  when SubmarineCommand::FORWARD
    SubmarineCommand.forward distance
  when SubmarineCommand::DOWN
    SubmarineCommand.down distance
  when SubmarineCommand::UP
    SubmarineCommand.up distance
  end
end

File.readlines('./files/day2.txt').each do |line|
  command = create_command line
  submarine.move command
end

puts submarine.position


