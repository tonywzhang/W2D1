require_relative "piece"
require "singleton"

class NullPiece < Piece
  include Singleton

  def initialize
    @color  = nil
    @pos = nil
    @board = nil
  end

  def moves

  end

  def symbol

  end

  def to_s
    " "
  end
end
