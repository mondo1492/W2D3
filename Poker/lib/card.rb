#face value => A - K, 2 - 9
#Suit value => S, D, H, C
#color => r || b
class Card
  attr_reader :face, :suit, :color
  FACE_VALUES = %i(two three four five six seven eight nine ten jack queen king ace)
  SUITS = %i(spades clubs hearts diamonds)

  def initialize(face, suit)
    raise "Card value should be a valid value" unless FACE_VALUES.include?(face)
    @face = face
    @suit = suit
    @color = color_card
  end

  def color_card
    return :black if suit == :spades || suit == :clubs
    :red if suit == :hearts || suit == :diamonds
  end
end
