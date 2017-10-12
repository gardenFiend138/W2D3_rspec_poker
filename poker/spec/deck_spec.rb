require 'deck'

RSpec.describe Deck do
  subject(:deck) { Deck.new }

    describe "#initialize" do
      it 'initializes with an empty array' do
        expect(deck.cards).to be_empty
      end
    end

    describe "#create_deck" do
      context "generate 52 cards with values and suits" do
        it 'makes sure there are 52 total cards with values in the deck' do
          expect(deck.cards.length).to be(52)
        end
        it 'creates the four suits' do
          SUITS = [:spade, :club, :heart, :diamond]
          expect()

        end
        it 'creates cards values (2-10, J, Q, K, A)' do
        end

        it 'assign each of the suits to the range of cards (2-Ace)' do
        end


      end
    end
end
