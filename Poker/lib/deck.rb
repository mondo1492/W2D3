require 'card'

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    fill_with_cards
    shuffle!
  end

  def fill_with_cards
    Card::FACE_VALUES.product(Card::SUITS).each do |face, suit|
      @cards << Card.new(face, suit)
    end
  end

  def shuffle!
    @cards.shuffle!
  end

  def take(num)
    dealt_cards = []
    num.times { dealt_cards << @cards.pop }
    dealt_cards
  end
end
