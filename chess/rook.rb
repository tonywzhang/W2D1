require_relative "sliding_piece"
require_relative "piece"

class Rook < Piece
  include SlidingPiece

  def symbol
    @color == :black ? ♖ : ♜
  end

  protected
  def move_dirs
    horizontal_dirs
  end

end
