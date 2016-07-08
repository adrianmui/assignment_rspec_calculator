# Your code here

#spec/calculator_spec.rb
require 'spec_helper'
require 'calculator'

describe Calculator do 

  let(:calculator){Calculator.new}

  describe '#add' do
    it 'returns the sum of its arguments' do
      expect(calculator.add(1,2)).to eq(3)
    end
    it 'returns the sum of a negative integer and positive integer' do
      expect(calculator.add(-5,1)).to eq(-4)
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

  describe '#multiply' do
    it 'returns the product of positive integers' do
      expect(calculator.multiply(4, 5)).to eq(20)
    end

    it 'returns the product of negative and positive integers' do
      expect(calculator.multiply(-2, 5)).to eq(-10)
    end

    it 'returns the product of double negative integers' do
      expect(calculator.multiply(-3, -6)).to eq(18)
    end

    it 'returns the product of floats' do
      expect(calculator.multiply(5.7, -3.9)).to eq(-22.23)
    end
  end

  describe '#divide' do
    it 'returns the division of positive integers' do
      expect(calculator.divide(3, 3)).to eq(1)
    end

    it 'returns the division of negative integers' do
      expect(calculator.divide(-4, 2)).to eq(-2)
    end

    it 'returns the division of floats' do
      expect(calculator.divide(5.6, 2.8)).to eq(2)
    end

    it 'returns the division of floats with remainders as floats' do
      expect(calculator.divide(3.0, 2.0)).to eq(1.5)
    end

    it 'returns an error if second argument equals 0' do
      expect { calculator.divide(4, 0) }.to raise_error(ArgumentError)
    end
  end

  describe '#pow' do
    it 'returns a positive integer raised to another integer' do
      expect(calculator.pow(3, 3)).to eq(27)
      expect(calculator.pow(3, 3).class).to eq(Float)
    end

    it 'returns an integer raised to a negative integer' do
      expect(calculator.pow(3, -3)).to eq(1/27.to_f)
    end

    it 'returns an integer raised to a float' do
      expect(calculator.pow(3.0, 3.33)).to eq(3.0**3.33)
    end
  end

  describe '#sqrt' do

    it 'returns square roots for positive numbers' do
      expect(calculator.sqrt(4)).to eq(2)
    end

    it 'returns errors for negative inputs' do
      expect { calculator.sqrt(-4)}.to raise_error(ArgumentError)
    end

    it 'returns integers for round roots' do
      expect(calculator.sqrt(9)).to eq(3)
    end

    it 'returns 2-digit decimals for non-roots' do
      expect(calculator.sqrt(10)).to eq(Math.sqrt(10).round(2))
    end
  end

  describe '#memory=' do

    it ' stores an object in memory, overwriting previous memory' do
      calculator.memory = 69
      expect(calculator.instance_variable_get(:@memory)).to eq(69)
    end
  end

  describe 'memory' do
    it ' returns the object in memory' do
     
    end

    it 'clears memory when returned' do
    end

    it 'starts as nil' do
    end


  end





end









