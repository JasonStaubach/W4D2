require_relative 'king'
require_relative 'piece.rb'
class Board 

    attr_reader :board
    def initialize

        @nul_piece_ins = 'nul_piece'

        @board = Array.new(8) {Array.new(8, @nul_piece_ins)}

        @board[0].each_with_index{|ele,i| @board[0][i] = Piece.new(:w,@board,[0,i])}
        @board[1].each_with_index{|ele,i| @board[1][i] = Piece.new(:w,@board, [1,i])}
        @board[-1].each_with_index{|ele,i| @board[-1][i] = Piece.new(:b, @board, [-1,i])}
        @board[-2].each_with_index{|ele,i| @board[-2][i] = Piece.new(:b, @board, [-2,i])}
        @board[4][4] = King.new(:b, @board, [4,4])
        

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
        p var
        self[start_pos] = @nul_piece_ins

        self[end_pos] = var
    

    end
    
    def render
        @board.each do |row|
            row.each do |ele|
                if ele.is_a?(Piece)
                    print ele.name.ljust(10) 
                else
                    print ele.ljust(10)
                end
                print "||"
            end
            puts
        end
        nil
    end


end 