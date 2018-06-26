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
