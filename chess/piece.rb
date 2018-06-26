require_relative "sliding_piece"
require_relative "stepping_piece"
require_relative "rook"
require_relative "queen"
require_relative "bishop"
require_relative "knight"
require_relative "king"
require_relative "pawn"
require_relative "null_piece"

class Piece
  attr_reader :color, :board, :pos, :symbol

  def initialize(color,board,pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
    symbol
  end

  def empty?

  end

  def valid_moves

  end

  def pos=(val)
    row,col = val
    @board[row][col] = val
  end

  def symbol

  end

  def move_into_check?(end_pos)

  end

end
