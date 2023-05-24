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
    include Stepable

    def initialize(color = :w, board = nil, pos = [0,1])
        @name = "♘"
        super
    end 

    def move_diffs
        MOVES
    end

end 