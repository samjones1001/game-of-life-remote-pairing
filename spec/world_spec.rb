require "world"

describe World do
  let(:initial_state)   { ["cell1", "cell2", 'cell3'] }
  let(:cell)            { Cell.new(0, 0) }
  let(:world)           { described_class.new(initial_state) }

  describe '#initialize' do
    it 'sets the initial world state' do
      expect(world.current_state).to eq(initial_state)
    end

    it 'stores an empty array to hold future state' do
      expect(world.future_state).to eq([])
    end
  end

  describe '#get_neighbors' do
    it 'generates a list of neighbours for the passed cell' do
      expected_output = [
        Cell.new(-1,-1),
        Cell.new(0,-1),
        Cell.new(1,-1),
        Cell.new(-1,0),
        Cell.new(1,0),
        Cell.new(-1,1),
        Cell.new(0,1),
        Cell.new(1,1)
      ]

      expect(world.get_cell_neighbors).to eq(expected_output)
    end
  end
end
