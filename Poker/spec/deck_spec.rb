require 'deck'
require 'card'

describe Deck do
  subject(:deck) { Deck.new }
  #let(:card) {double("cards")}

  describe '#initialize' do
    it 'should fill with 52 card objects' do
      expect(deck.cards.length).to eq(52)
      expect(deck.cards.all? { |card| card.is_a?(Card) }).to be true
    end
  end

  describe '#shuffle!' do
    it "should mix up the cards" do
      deck_dup = deck.cards.dup
      deck.shuffle!
      expect(deck_dup).to_not eq(deck.cards)
    end
  end

  describe '#take(num)' do
    it 'should take 3 cards from deck' do
      deck.take(3)
      expect(deck.cards.length).to eq(49)
    end
    it 'should return an array of cards' do
      hand = deck.take(5)
      expect(hand.length).to eql(5)
      expect(hand.all? { |card| card.is_a?(Card) }).to be true
    end
  end
end
