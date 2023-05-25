require_relative 'piece'

class Pawn < Piece

    def initialize(color, board, pos)
        @name = '♙'
        super
    end


    def moves 




    end 


    def at_start_row? 

        if color == :b && pos[0] == 1 
            return true 
        elsif color == :w && pos[0] == 6 
            return true 
        end 

        return false

    end 


    def for_dir?


        if color == :w 
            return -1
        else 
            return 1
        end 


    end 

    def forward_steps 

        direction = for_dir? 

    end 

    def side_attacks 

        side_moves = []

        # debugger 

        dir = for_dir?

        attacks = [[1, -1], [1,1]]

        
        debugger
        attacks.each_with_index {|attack,i| attack[i] = [(attack[0] * dir),attack[i][1]]}
        attacks.each do |attack|
                row = attack[0] + self.pos[0]
                col = attack[1] + self.pos[1]
            if (self.color == :w && self.board[row][col].color == :b)
                side_moves << attack
            elsif(self.color == :b && self.board[row][col].color == :w)
                p attack
                side_attacks << attack
            end
        end
    
        side_moves


    end 



end