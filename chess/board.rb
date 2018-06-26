require_relative "piece"

class Board

  attr_reader :board

ROWS = [0, 1, 6, 7]
EMPTY_ROWS = [2, 3, 4, 5]

def initialize
  @board = Array.new(8) {Array.new(8)}
  # @board[0].each_with_index {|el, i| @board[0][i] = Piece.new}
  # @board[1].each_with_index {|el, i| @board[0][i] = Piece.new}
  @board.each_with_index do |row, row_idx|
    row.each_index do |col|
      if ROWS.include?(row_idx)
        @board[row_idx][col] = Piece.new
      else
        @board[row_idx][col] = NullPiece.new
      end
    end
  end
end

def [](pos)
  row,col = pos
  @board[row][col]
end

def []=(pos,value)
  row,col = pos
  @board[row][col] = value
end

def move_piece(start_pos, end_pos)
  raise ArgumentError.new "There is no piece on that square" if self[start_pos].is_a?(NullPiece)
  # raise "That is not a valid move" unless valid_move?(end_pos)

  self[end_pos] = self[start_pos]
  self[start_pos] = NullPiece.new
end

def self.valid_pos?(pos)
  if pos.any? {|el| el > 7 || el < 0}
    return false
  end
  true
end















end
