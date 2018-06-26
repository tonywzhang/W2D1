module SlidingPiece


  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    result = []
    move_dirs.each do |(dx,dy)|
      result += grow_unblocked_moves_in_dir(dx,dy)
    end
    result
  end

  private
  def move_dirs

  end

  def grow_unblocked_moves_in_dir(dx,dy)
    newpos = [pos[0] + dx, pos[1] + dy]

    result = []
    while board.valid_pos?(newpos)
      result << newpos
      newpos = [newpos[0] + dx, [newpos[1] + dy]]
    end
    result
  end

  HORIZONTAL_DIRS = [[0, -1], [0, 1], [-1, 0], [1, 0]]
  DIAGONAL_DIRS = [[-1,-1], [1, -1], [-1, 1], [1,1]]

end

module SteppingPiece

  def moves
    result = []
    move_diffs.each do |(dx,dy)|
      newpos = [pos[0] + dx, pos[1] + dy]
      result << newpos if board.valid_pos?(newpos)
    end
    result
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
    horizontal_dirs
  end

end


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


class Queen < Piece
  include SlidingPiece
  def symbol
    @color == black ? ♛ : ♕
  end

  protected
  def move_dirs
    diagonal_dirs + horizontal_dirs
  end
end

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

class Pawn < Piece
  def symbol
    @color == black ? ♟ : ♙
  end

  def move_dirs
    forward_steps + side_attacks
  end

  private
  def at_start_row?
    (@color == black && pos[0] == 1) || (@color == white && pos[0]==6)
  end

  def forward_dir

  end

  def forward_steps
    return [1,0] if @color == black
    return [-1,0] if @color == white
  end

  def side_attacks
    return [[1,-1],[1,1]] if @color == black
    return [[-1,1],[-1,-1]] if @color == white
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
