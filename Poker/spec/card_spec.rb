require 'card'

describe Card do
  subject(:card) { Card.new('4', 'Spade') }

  describe '#initialize' do
    it 'stores the face value in an instance variable' do
      expect(card.face).to eq('4')
    end
    it 'raises error on incorrect argument types' do
      expect { Card.new(2, 'Spade') }.to raise_error("Card value should be a string")
    end
    it 'raises error on incorrect range' do
      expect { Card.new("1", 'Spade') }.to raise_error("Card value should be a valid value")
    end
    it 'stores suit in an instance variable' do
      expect(card.suit).to eq('Spade')
    end
    it 'assigns a color' do
      expect(card).to receive(:color_card)
      Card.new('4', "Hearts")
    end
  end

  describe '#color_card' do

    it 'colors diamonds and hearts red' do
      card2 = Card.new('4', 'Hearts')
      expect(card2.color).to eq(:red)
    end
    it 'colors spades and clubs black' do
      expect(card.color).to eq(:black)
    end
  end
end
