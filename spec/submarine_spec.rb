require 'submarine'

describe 'Submarine' do
  let(:submarine) { Submarine.new }

  describe '#move' do
    context 'forward' do
      it 'moves forward the submarine' do
        submarine.move(SubmarineCommand.forward(5))
        expect(submarine.position.x).to eq(5)
        expect(submarine.position.y).to eq(0)
      end
    end

    context 'down' do
      it 'moves down the submarine' do
        submarine.move(SubmarineCommand.down(2))
        expect(submarine.position.x).to eq(0)
        expect(submarine.position.y).to eq(2)
      end
    end

    context 'up' do
      it 'moves up the submarine' do
        submarine.move(SubmarineCommand.up(3))
        expect(submarine.position.x).to eq(0)
        expect(submarine.position.y).to eq(-3)
      end
    end

    context 'when there are several commands' do
      it 'moves correctly the submarine' do
        submarine.move(SubmarineCommand.forward(4))
        submarine.move(SubmarineCommand.down(5))
        submarine.move(SubmarineCommand.forward(7))
        submarine.move(SubmarineCommand.up(2))
        submarine.move(SubmarineCommand.forward(3))
        submarine.move(SubmarineCommand.down(5))

        expect(submarine.position.x).to eq(14)
        expect(submarine.position.y).to eq(8)
      end
    end
  end
end
