require 'hanoi'

describe Hanoi do
  subject(:game) { Hanoi.new }
  describe "#initialize" do
    it "initializes board" do
      expect(game.board).to eq([[], [], []])
    end

  end

  describe "init_tower" do
    it "creates a tower of size 4 on the left" do
      game.instance_variable_set(:@size, 4)
      game.init_tower
      expect(game.board).to eq([[4,3,2,1], [], []])
    end
  end

  describe "#place_disk" do
    it "moves disk to index" do
      game.board = [[4,3,2,1], [], []]
      game.place_disk(0, 1)
      expect(game.board).to eq([[4,3,2], [1], []])
    end
  end

  describe "#get_move" do
    it 'validates input' do
      expect(game).to receive(:valid_input?)
      game.get_move
    end

    it 'returns an array of indices' do
      expect(game.get_move).to eq([])
    end
  end

  describe "#valid_input?" do
    it "makes sure start index and index are between 0 - 2"
    it "only moves smaller disks on top of bigger disks"
  end

  describe "#win?" do
    it "returns true when win conditions fulfilled"
    it "returns false otherwise"
  end

  describe "#play" do
    it "asks for a starting size"
    it "intializes size of tower" do
      expect(game.size).to eq(3)
    end
    it "loops until game is won"
    it "gets a move from player"
    it "places disk after getting move"
  end
end
