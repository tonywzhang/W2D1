require_relative "board"
require_relative "cursor"
require_relative "piece"
require "colorize"

class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    puts "________________________________"
    @board.board.each_with_index do |row,row_idx|
      (0...8).each do |col_idx|
        if row_idx == @cursor.cursor_pos[0] && col_idx == @cursor.cursor_pos[1]
          print "| #{@board.board[row_idx][col_idx].to_s.colorize(:red)} "
        else
          print "| #{@board.board[row_idx][col_idx].to_s} "
        end
      end
      print "|\n"
      puts "________________________________"
    end
  end

  def move_cursor
    5.times do
      @cursor.get_input
      render
    end
  end

end

if __FILE__ == $PROGRAM_NAME
d = Display.new(Board.new)
d.render
d.move_cursor

end
