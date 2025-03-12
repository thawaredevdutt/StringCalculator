require_relative '../calculator'

RSpec.describe Calculator do
  describe '.add' do
    context 'with valid input' do
      it 'returns 0 for an empty string' do
        expect(Calculator.add("")).to eq(0)
      end

      it 'returns the number itself for a single number' do
        expect(Calculator.add("1")).to eq(1)
      end

      it 'returns the sum of numbers for comma-separated numbers' do
        expect(Calculator.add("1,5")).to eq(6)
      end

      it 'handles new lines between numbers' do
        expect(Calculator.add("1\n2,3")).to eq(6)
      end
    end
  end
end
