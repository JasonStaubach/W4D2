module Stepable 
  

    def moves

        useful_moves = []
      range = (0..7)
    
      move_diffs.each do |poss_pos|
        row = poss_pos[0] + self.pos[0]
        col = poss_pos[1] + self.pos[1]
        if range.include?(row) && range.include?(col) 
          if (self.board[row][col].color != self.color) 
            pos = [row, col]
            useful_moves << pos
          end 
        end 
      end

      useful_moves

    end 


      def move_diffs
        # subclass implements this
        raise NotImplementedError
      end
            
    end 
 