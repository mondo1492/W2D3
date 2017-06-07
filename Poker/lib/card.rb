#face value => A - K, 2 - 9
#Suit value => S, D, H, C
#color => r || b
class Card
  attr_reader :face, :suit, :color
  FACE_VALUES = %w(2 3 4 5 6 7 8 9 Jack Queen King Ace )

  def initialize(face, suit)
    raise "Card value should be a string" unless face.is_a?(String)
    raise "Card value should be a valid value" unless FACE_VALUES.include?(face)
    @face = face
    @suit = suit
    color_card
  end

  def color_card
    @color = :black if suit == "Spade" || suit == "Club"
    @color = :red if suit == "Hearts" || suit == "Diamond"
  end
end
