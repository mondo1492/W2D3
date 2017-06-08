require 'hand'

describe Hand do
  let(:card1) { double('Card', face: :nine, suit: :spade) }
  let(:card2) { double('Card', face: :ten, suit: :spade) }
  let(:card3) { double('Card', face: :jack, suit: :spade) }
  let(:card4) { double('Card', face: :eight, suit: :spade) }
  let(:card5) { double('Card', face: :seven, suit: :spade) }
  subject(:player_hand) { Hand.new([card1, card2, card3, card4, card5]) }
  describe '#initialize' do
    it 'has 5 cards' do
      expect(player_hand.hand.length).to eq(5)
    end
    it 'assigns a hand rank' do
      expect(player_hand.rank).to eq(2)
    end
  end

  describe "#discard" do
    it 'discards card at index 2'
  end

  describe 'Hand Logic' do # think this might be too complicated, should just compare a few hands and see if correct rank given
    describe 'give_rank' do
    end
    # describe '#four_of_a_kind?' do
    # end
    # describe '#flush?' do
    # end
    # describe '#straight?' do
    # end
    # describe '#straight_flush?' do
    # end
    # describe '#three_of_a_kind?' do
    # end
    # describe '#two_pair?' do
    # end
    # describe '#full_house?' do
    # end
    # describe '#royal_flush?' do
    # end
    # describe '#pair?' do
    # end
  end

  describe '::compare_ranks' do
  end
  describe '::compare_equal_ranks' do
  end
end
