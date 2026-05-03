require './lib/calculator'

RSpec.describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe "#multiply" do
    it "returns the multiply of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(3, 6)).to eql(18)
    end

    it "returns the multiply of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(2, 3, 4)).to eql(24)
    end
  end

  describe "#subtract" do
    it "returns the subtract of two numbers" do
      calculator = Calculator.new
      expect(calculator.subtract(5, 3)).to eql(2)
    end

    it "return the subtract of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.subtract(10, 4, 1)).to eql(5)
    end
  end

  describe "#divide" do

    it "returns the divide of two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(6, 2)).to eql(3)
    end

    it "return the divide of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(30, 5, 3)).to eql(2)
    end
  end
end

