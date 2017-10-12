require_relative 'card'

class Deck
  attr_reader :deck
  SUITS = [:spade, :club, :heart, :diamond].freeze
  VALUES = [:A,2,3,4,5,6,7,8,9,10,:J,:Q,:K].map(&:to_s)

  def initialize
    @deck = []
    create_deck
  end

  def create_deck
    VALUES.each do |value|
      SUITS.each do |suit|
        @deck << Card.new(value, suit)
      end
    end
    display_deck
  end

  def display_deck
    result = []

    @deck.each do |card|
      result << [card.value, card.suit]
    end

    result
  end
end


deck = Deck.new
p deck
