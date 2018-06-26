class Board

ROWS = [0, 1, 6, 7]
EMPTY_ROWS = [2, 3, 4, 5]

def initialize
  @board = Array.new(8) {Array.new(8)}
  # @board[0].each_with_index {|el, i| @board[0][i] = Piece.new}
  # @board[1].each_with_index {|el, i| @board[0][i] = Piece.new}
  @board.each_index do |row|
    row.each_index do |col|
      if ROWS.include?(row)
        @board[row][col] = Piece.new
      else
        @board[row][col] = NullPiece.new
      end
    end
  end
end

def move_piece(start_pos, end_pos)



end
















end
