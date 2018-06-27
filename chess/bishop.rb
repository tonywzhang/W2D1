require_relative "sliding_piece"
require_relative "piece"


class Bishop < Piece
  include SlidingPiece
  def symbol
    @color == black ? ♜ : ♖
  end

  protected
  def move_dirs
    diagonal_dirs
  end
end
