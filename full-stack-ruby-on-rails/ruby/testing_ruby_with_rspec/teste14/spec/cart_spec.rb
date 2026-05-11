require './lib/cart'
RSpec.describe Cart do
  let(:discount) { double("discount") }
  subject { described_class.new(discount)}

  it "aplica desconto no preço final" do
    allow(discount).to receive(:apply).and_return(90)
    expect(subject.final_price(100)).to eq(90)
  end
end
