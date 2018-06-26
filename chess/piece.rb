module SlidingPiece
  HORIZONTAL_DIRS = [:left, :right, :up, :down]
  DIAGONAL_DIRS = [:northwest, :northeast, :southwest, :southeast]

  HORIZONTAL_MOVES = {
    left: [0, -1],
    right: [0, 1],
    up: [-1, 0],
    down: [1, 0]
  }
  DIAGONAL_MOVES = {
    northwest: [-1,-1],
    northeast: [1, -1],
    southwest: [-1, 1],
    southeast: [1,1]
  }

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    result = []
    move_dirs.each {|dir| result += grow_unblocked_moves_in_dir(dir[0],dir[1])}
    result
  end

  private
  def move_dirs

  end

  def grow_unblocked_moves_in_dir(dx,dy)
    result = []

    result
  end
end

module SteppingPiece

  def moves

  end

  private
  def move_diffs

  end

end

class Piece
  attr_reader :color, :board, :pos

  def initialize(color,board,pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
    "@"
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

class Rook < Piece
  include SlidingPiece

  def symbol
    @color == black ? ♖ : ♜
  end

  protected
  def move_dirs
    HORIZONTAL_DIRS
  end

end


class Bishop < Piece
  include SlidingPiece
  def symbol
    @color == black ? ♜ : ♖
  end

  protected
  def move_dirs
    DIAGONAL_DIRS
  end
end


class Queen < Piece
  include SlidingPiece
  def symbol
    @color == black ? ♛ : ♕
  end

  protected
  def move_dirs
    DIAGONAL_DIRS + HORIZONTAL_DIRS
  end
end

class Knight < Piece
  include SteppingPiece
  def symbol
    @color == black ? ♞ : ♘
  end

  protected
  def move_diffs

  end
end

class King < Piece
  include SteppingPiece
  def symbol
    @color == black ? ♚ : ♔
  end

  protected
  def move_diffs

  end

end

class Pawn < Piece
  def symbol
    @color == black ? ♟ : ♙
  end

  def move_dirs

  end

  private
  def at_start_row?

  end

  def forward_dir

  end

  def forward_steps

  end

  def side_attacks

  end
end

class NullPiece < Piece
  include Singleton

  def initialize

  end

  def moves

  end

  def symbol

  end

  def to_s
    " "
  end
end
