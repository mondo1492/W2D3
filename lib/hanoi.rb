class Hanoi
  attr_reader :board
  def initialize
    @board = [[], [], []]
  end

  def init_tower
    @size.times do |i|
      @board[0].unshift(i+1)
    end
  end
end
