require_relative "stepping_piece"

class Knight < Piece
  include SteppingPiece
  def symbol
    @color == black ? ♞ : ♘
  end

  protected
  def move_diffs
    [[2, 1], [2, -1], [1, 2], [1, -2], [-1,2], [-1, -2], [-2, 1], [-2,-1]]
  end
end
