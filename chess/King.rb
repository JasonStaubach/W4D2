require_relative 'piece'
class King < Piece


    MOVES = [
        [1, 0]
        [1,1]
        [0,1]
        [-1,0]
        [-1,-1]
        [-1, 1]
        [0, -1]
        [1, -1]
]

    def self.moves

        MOVES

    end 

    def initialize(color, board, pos)
        super(color, board, pos)

    end 

end 