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
