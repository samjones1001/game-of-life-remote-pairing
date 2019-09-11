require 'cell'

describe Cell do

  let (:cell) {Cell.new(0,0)}

  describe '#initialize' do
    it 'stores an x position' do
      expect(cell.x).to eq(0)
    end

    it 'stores a y position' do
      expect(cell.y).to eq(0)
    end

    it 'defaults livingness to true' do
      expect(cell.livingness).to eq(true)
    end
  end

  describe '#die' do
    it 'sets livingness to false' do
      cell.die
      expect(cell.livingness).to eq(false)
    end
  end


end
