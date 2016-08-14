# Your code here
require 'calculator'

describe Calculator do
  let(:calc){ Calculator.new }

  describe "#initialize" do
    it "should create new calculator" do
      expect(calc).to be_a(Calculator)
    end
  end

  describe "#add" do
    it "should return sum of 2 arguments" do
      expect(calc.add(1, 2)).to eql(3)
    end
  end

  describe "#subtract" do
    it "should subtract 1st argument from 2nd" do
      expect(calc.subtract(3, 1)).to eql(2)
    end
  end

  describe "#multiply" do
    it "should multiply 1st argument to 2nd" do
      expect(calc.multiply(2, 2)).to eql(4)
    end
  end

  describe "#divide" do
    it "should divide 1st agrument to 2nd" do
      expect(calc.divide(10, 2)).to eql(5)
    end

    it "should raise ArgumentError if b == 0" do
      expect{calc.divide(10, 0)}.to raise_error(ArgumentError)
    end
  end

  describe "#pow" do
    it "should return power of passed argument" do
      expect(calc.pow(2, 2)).to eql(4.0)
    end
  end

  describe "#sqrt" do
    it "should return square root of argument" do
      expect(calc.sqrt(16)).to eql(4)
    end

    it "should raise ArgumentError if argument is negative" do
      expect{ calc.sqrt(-1) }.to raise_error(ArgumentError)
    end
  end

  describe "#memory" do
    it "return item in memory and wipe it" do
      calc.memory=(100)
      expect(calc.instance_variable_get(:@memory)).to eql(100)
      calc.memory
      expect(calc.memory).to eql(nil)
    end
  end
end
