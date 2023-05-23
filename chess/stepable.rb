module Stepable 

    def place_move

     curr_moves = self.moves
        p self.pos
      curr_moves.each do |poss_pos|
        row = poss_pos[0] + self.pos[0]
        col = poss_pos[1] + self.pos[1]
      end

        

        #want to take current pos and land at new position 

        #checks knights moves agaist the board 

        #calls move piece at the end 

    end 

end 