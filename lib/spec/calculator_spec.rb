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

      it 'supports custom delimiters' do
        expect(Calculator.add("//;\n1;2")).to eq(3)
      end
    end

    context 'with invalid input' do
      it 'raises an error for negative numbers' do
        expect { Calculator.add("1,-2,3") }.to raise_error(RuntimeError, "negative numbers not allowed -2")
      end

      it 'raises an error for multiple negative numbers' do
        expect { Calculator.add("1,-2,-3") }.to raise_error(RuntimeError, "negative numbers not allowed -2, -3")
      end

      it 'raises an error for invalid input format' do
        expect(Calculator.add("1,\n")).to eq("Invalid Input")
      end
    end
  end
end
