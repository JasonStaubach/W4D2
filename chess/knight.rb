require_relative 'piece'
require_relative 'stepable'

    MOVES = [
        [-2, -1],
        [-2, 1],
        [-1, -2],
        [-1, 2],
        [1, -2],
        [1, 2],
        [2, -1],
        [2, 1]
    ]

class Knight < Piece

    def initialize(color = :w, board = nil, pos = [0,1])
        @name = "♘"
        super(color, board, pos)
    end 
end 