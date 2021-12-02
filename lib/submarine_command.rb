class SubmarineCommand
  attr_reader :direction, :distance

  FORWARD = 'forward'
  DOWN = 'down'
  UP = 'up'

  def initialize direction, distance
    @direction = direction
    @distance = distance
  end

  def self.forward distance
    SubmarineCommand.new FORWARD, distance
  end

  def self.down distance
    SubmarineCommand.new DOWN, distance
  end

  def self.up distance
    SubmarineCommand.new UP, distance
  end
end