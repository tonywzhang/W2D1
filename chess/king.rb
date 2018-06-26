require_relative "stepping_piece"

class King < Piece
  include SteppingPiece
  def symbol
    @color == black ? ♚ : ♔
  end

  protected
  def move_diffs
    [[0, -1], [0, 1], [-1, 0], [1, 0], [-1,-1], [1, -1], [-1, 1], [1,1]]
  end

end
