require_relative 'piece'
require_relative 'slideable'
class Rook < Piece
include Slideable
    def initialize(color, board, pos)
        @name = '♖'
        super
    end


    def move_dirs
        horizontal_dirs
    end
end