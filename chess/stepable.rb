module Stepable 

    def place_move

        useful_moves = []

     curr_moves = self.moves
     
        p self.pos
      curr_moves.each do |poss_pos|
        row = poss_pos[0] + self.pos[0]
        col = poss_pos[1] + self.pos[1]
        if self.board[row][col].color != self.color 
            pos = [row, col]
            useful_moves << pos
        end 
      end

      useful_moves
        
    end 

end 