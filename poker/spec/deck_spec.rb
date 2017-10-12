require 'deck'

RSpec.describe Deck do
  subject(:deck) { Deck.new }

    describe "#initialize" do
      it 'initializes with an empty array' do
        expect(deck.cards).to be_empty
      end
    end

    describe "#create_deck" do
      # let(:card)  { double(card(2, :heart)) }
      # let(:card2) { double card(3, :spade)) }

      context "generate 52 cards with values and suits" do
        it 'makes sure there are 52 total cards in the deck' do
          expect(deck.cards.length).to be(52)
        end
        it 'makes sure that every card is unique' do
          temp_deck = []
          deck.each do |card_obj|
            current_card = [card_obj.value, card_obj.suit]
            temp_deck << current_card if !temp_deck.include?(current_card)
          end

          expect(temp_deck.length).to  eq(deck.length)
      end
    end
end
