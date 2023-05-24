require_relative 'piece'

class Pawn < Piece
    def initialize(color, board, pos)
        @name = '♙'
        super
    end
end