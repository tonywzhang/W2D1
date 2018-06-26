class Piece
  def to_s
    "@"
  end
end

class NullPiece < Piece
  def to_s
    " "
  end
end
