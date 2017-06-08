require 'card'

describe Card do
  subject(:card) { Card.new(:four, :spades) }

  describe '#initialize' do
    it 'stores the face value in an instance variable' do
      expect(card.face).to eq(:four)
    end
    it 'raises error on incorrect range' do
      expect { Card.new(:one, :spades) }.to raise_error("Card value should be a valid value")
    end
    it 'stores suit in an instance variable' do
      expect(card.suit).to eq(:spades)
    end
  end

  describe '#color_card' do

    it 'colors diamonds and hearts red' do
      card2 = Card.new(:four, :hearts)
      expect(card2.color).to eq(:red)
    end
    it 'colors spades and clubs black' do
      expect(card.color).to eq(:black)
    end
  end
end
