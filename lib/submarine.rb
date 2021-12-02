require_relative './submarine_command'
require 'ostruct'

class Submarine
  def initialize
    @position = OpenStruct.new({ x: 0, y: 0 })
  end

  def move command
    case command.direction
      when SubmarineCommand::FORWARD
        @position.x += command.distance
      when SubmarineCommand::DOWN
        @position.y += command.distance
      when SubmarineCommand::UP
        @position.y -= command.distance
    end
  end

  def position
    @position
  end
end