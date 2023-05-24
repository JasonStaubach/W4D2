require_relative 'king'
require_relative 'rook'
require_relative 'bishop'
require_relative 'pawn'
require_relative 'queen'
require_relative 'knight'
require_relative 'nill_piece'
require_relative 'piece'

class Board 

    attr_reader :board
    def initialize


        @board = Array.new(8) {Array.new(8, NillPiece.instance)}

        self.assign_back_row(:b)
        @board[1].each_with_index{|ele,i| @board[1][i] = Pawn.new(:b,@board, [1,i])}
        
        self.assign_back_row(:w)
        @board[-2].each_with_index{|ele,i| @board[-2][i] = Pawn.new(:w, @board, [-2,i])}
        

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

        if self[start_pos] == NillPiece.instance
            raise 'no piece'
        end 

        if end_pos[0] > 8 || end_pos[-1] > 8 
            raise 'off da board'
        end 


        var = self[start_pos]
        p var
        self[start_pos] = NillPiece.instance

        self[end_pos] = var
    

    end
    
    def render
        @board.each do |row|
            row.each do |ele|
                if ele.is_a?(Piece)
                    print ele.name.ljust(6) 
                else
                    print ele.ljust(6)
                end
                print "||"
            end
            puts
        end
        nil
    end

    def assign_back_row(symbol)
        row = 0
        col = 0
        row = 7 if symbol == :w
        pos = [row, col]
        while pos[1] < 8
            case pos[1]
            when 0 
                self[pos] = Rook.new(symbol, @board,pos)
            when 1
                self[pos] = Knight.new(symbol, @board, pos)
            when 2
                self[pos] = Bishop.new(symbol,@board,pos)
            when 3 
                self[pos] = Queen.new(symbol,@board,pos)
            when 4
                self[pos] = King.new(symbol,@board,pos)
            when 5
                self[pos] = Bishop.new(symbol,@board,pos)
            when 6
                self[pos] = Knight.new(symbol, @board, pos)
            when 7
                self[pos] = Rook.new(symbol, @board,pos)
            end

            pos[1] += 1
        end
    end




end 