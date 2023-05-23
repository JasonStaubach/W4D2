
require_relative "board"
class Piece

    attr_reader :name, :color, :board, :pos

    def initialize(color = nil, board = nil, pos = nil)

        @name = 'piece'

        @color = color 

        @board = board

        @pos = pos

    end 


    # def inspect
    #     p "#<Piece:#{object_id}, @name:#{@name}> "
    # end

    def to_s

    end

    def empty?

    end

    def valid_moves

        raise "#{@name} has no valid moves"

    end

    def pos=(val)
    end

    def Symbol

    end

    def moves 

        #takes available moves from piece sub(pawn) and shows available(empty)
        #pos on board

    end 
    private
    def move_into_check?(end_pos)

    end




end 