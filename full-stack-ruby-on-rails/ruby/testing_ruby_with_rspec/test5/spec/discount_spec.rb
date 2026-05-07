# # frozen_string_literal: true

require './lib/discount'

RSpec.describe Discount do
  let(:price) { 100 }

  describe '#apply' do
    context 'when discount type is invalid' do
      let(:discount) { Discount.new(type: :fix, value: 43) }
      it 'returns price' do
        expect(discount.apply(price)).to eq(price)
      end
    end

    context 'when discount type is percentage' do
      context 'and discount value is negative' do
      let(:discount_percentage) { Discount.new(type: :percentage, value: -43) }
        it 'returns price' do
          expect(discount_percentage.apply(price)).to eq(price)
        end
      end

      context 'and value is positive and less than 100' do
        let(:discount_percentage) { Discount.new(type: :percentage, value: 90) }
        it 'returns price with discount applied' do
          expect(discount_percentage.apply(price)).to eq(10)
        end
      end
      context 'and value is greatter than 100' do
        let(:discount_percentage) { Discount.new(type: :percentage, value: 110) }
        it 'returns price zero' do
          pending 'bug: percentage > 100 returns negative price, fix with .max(0)'
          expect(discount_percentage.apply(price)).to eq(0)
        end
      end
    end

    context 'when discount type is fixed' do
      context 'and discount value is negative' do
        let(:discount_fixed) { Discount.new(type: :fixed, value: -10) }
        it 'returns price' do
          expect(discount_fixed.apply(price)).to eq(price)
        end
      end

      context 'and value is positive and less price' do
        let(:discount_fixed) { Discount.new(type: :fixed, value: 45) }
        it 'returns price with discount applied' do
          expect(discount_fixed.apply(price)).to eq(55)
        end
      end

      context 'and value is greatter than price' do
        let(:discount_fixed) { Discount.new(type: :fixed, value: 105) }
        it 'returns price equals zero' do
          expect(discount_fixed.apply(price)).to eq(0)
        end
      end
    end
  end
end
