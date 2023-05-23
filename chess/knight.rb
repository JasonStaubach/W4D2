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

    def initialize(color, board, pos)
        super(color, board, pos)

    end 



end 