# Your code here

#spec/calculator_spec.rb

require_relative '../lib/calculator'

describe Calculator do 

  let(:calculator){Calculator.new}

  describe '#add' do
    it 'returns the sum of its arguments' do
      expect(calculator.add(1,2)).to eq(3)
    end
    it 'returns the sum of a negative integer and positive integer' do
      expect(calculator.add(-5,5)).to eq(0)
    end

    it 'returns the sum of floats' do
      expect(calculator.add(5.33, 1)).to eq(6.33)
      expect(calculator.add(5.33,1).class).to eq(Float)
    end
  end

   describe '#subtract' do
      it 'returns the subtract of positive integers' do
        expect(calculator.subtract(3,2)).to eq(1)
      end

      it 'returns the subtract of negative integers' do
        expect(calculator.subtract(3,-5)).to eq(8)
      end

      it 'returns the subtract of floats' do
        expect(calculator.subtract(5.33, 3.33)).to eq(2.00)
        expect(calculator.subtract(5.33,3.33).class).to eq(Float)
      end
    end

end
