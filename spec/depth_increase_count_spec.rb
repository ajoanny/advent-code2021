require 'depth_increase_count'

describe 'DepthIncrease' do
  let(:project) { Project.new }

  describe '#depth_increase_count' do
    context 'when there is no entries' do
      it 'returns 0' do
        depth_measurement = []
        expect(depth_increase_count(depth_measurement)).to eq 0
      end
    end

    context 'when there are entries' do
      context 'when there is 2 entries' do
        context 'when the last entry is deeper than the previous' do
          it 'returns 0' do
            depth_measurement = [1, 2]
            expect(depth_increase_count(depth_measurement)).to eq 1
          end
        end
        context 'when the last entry is not deeper than the previous' do
          it 'returns 0' do
            depth_measurement = [3, 3]
            expect(depth_increase_count(depth_measurement)).to eq 0
          end
        end
      end
      context 'when there are more entries' do
        context 'when the last entry is deeper than the previous' do
          it 'count the number of times where the measurement was deeper than the previous measurement' do
            depth_measurement = [1, 2, 4, 1, 2, 7]
            expect(depth_increase_count(depth_measurement)).to eq 4
          end
        end
      end
    end

    context 'advent of code' do
      it 'works on advent of code example' do
        depth_measurement = [199,200, 208, 210, 200, 207, 240, 269, 260, 263]
        expect(depth_increase_count(depth_measurement)).to eq 7
      end
    end
  end
end
