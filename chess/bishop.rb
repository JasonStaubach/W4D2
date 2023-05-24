require_relative "piece"
require_relative "slideable"

class Bishop < Piece
include Slideable
    def initialize(color, board, pos)
        @name = '♗'
        super
    end
end