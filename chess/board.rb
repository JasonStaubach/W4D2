require_relative 'piece'
class Board 


    def initialize

        @nul_piece_ins = 'nul_piece'

        @board = Array.new(8) {Array.new(8, @nul_piece_ins)}
        @board[0].map! {|ele| ele = 'piece' }
        @board[1].map! {|ele| ele = 'piece' }
        @board[-1].map! {|ele| ele = 'piece' }
        @board[-2].map! {|ele| ele = 'piece' }

    end 

    def [](pos)

        x, y = pos 

        @board[x][y]

    end 


    def []=(pos, val)

        x, y = pos 

        @board[x][y] = val

    end


    def  add_piece(piece_ins, pos) 

        self[pos] = piece_ins

    end 


    def move_piece(start_pos, end_pos)

        if self[start_pos] == @nul_piece_ins
            raise 'no piece'
        end 

        if end_pos[0] > 8 || end_pos[-1] > 8 
            raise 'off da board'
        end 

        var = self[start_pos]

        self[start_pos] = @nul_piece_ins

        self[end_pos] = var
    

    end 


end 