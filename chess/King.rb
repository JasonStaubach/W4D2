require_relative 'piece'
require_relative "stepable"

class King < Piece
include Stepable

    MOVES = [
        [1, 0],
        [1,1],
        [0,1],
        [-1,0],
        [-1,-1],
        [-1, 1],
        [0, -1],
        [1, -1],
]

    def self.moves

        MOVES

    end 
    def initialize(color = :w, board = nil, pos = nil)
        super
    end

    # def initialize(color = :w, board = nil, pos = nil)
    #     super(color, board, pos)

    # end 

end 