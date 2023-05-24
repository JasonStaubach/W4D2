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

 
    def initialize(color = :w, board = nil, pos = [0, 0])
        @name = '♔'
        super
    end

    def move_diffs 
        MOVES
    end 

end 