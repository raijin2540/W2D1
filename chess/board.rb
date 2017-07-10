require_relative 'piece'
class Board
  attr_reader :grid
  def initialize
    @grid = Array.new(8) {Array.new(8)}
    @grid[0].map! { |pos| pos = Piece.new }
    @grid[1].map! { |pos| pos = Piece.new }
    @grid[6].map! { |pos| pos = Piece.new }
    @grid[7].map! { |pos| pos = Piece.new }

    @grid[2].map! { |pos| pos = NullPiece.new }
    @grid[3].map! { |pos| pos = NullPiece.new }
    @grid[4].map! { |pos| pos = NullPiece.new }
    @grid[5].map! { |pos| pos = NullPiece.new }

  end

  def move_piece(start_pos, end_pos)
    raise "No Piece" if start_pos.is_a?(NullPiece)
    raise "Invalid Move" if end_pos.is_a?(Piece)
    [end_pos] = [start_pos]
    [start_pos] = NullPiece.new

  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    @grid[x][y] = value
  end

end
