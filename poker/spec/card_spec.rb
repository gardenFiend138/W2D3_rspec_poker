require 'card'

RSpec.describe Card do
  subject(:card) { Card.new(:heart, 2)}

  describe "#initialize" do
    it "assigns card a suit" do
      expect(card.suit).to eq(:heart)
    end

    it "assigns card a face value" do
        expect(card.value).to eq(2)
    end
  end
end
