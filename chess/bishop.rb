require_relative "piece"
require_relative "slideable"

class Bishop < Piece
include Slideable
    def initialize(color, board, pos)
        @name = '♗'
        super
    end
    def move_dirs
        diagonal_dirs
    end
end