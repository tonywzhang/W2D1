require_relative "piece"

class Pawn < Piece
  def symbol
    @color == :black ? "♟" : "♙"
  end

  def move_dirs
    forward_steps + side_attacks
  end

  private
  def at_start_row?
    (@color == :black && pos[0] == 1) || (@color == :white && pos[0]==6)
  end

  def forward_dir

  end

  def forward_steps
    return [1,0] if @color == :black
    return [-1,0] if @color == :white
  end

  def side_attacks
    return [[1,-1],[1,1]] if @color == :black
    return [[-1,1],[-1,-1]] if @color == :white
  end
end
