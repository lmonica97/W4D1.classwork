class KnightPathFinder
    def self.valid_moves(pos)
        possible_moves = [[1, 2], [1, -2], [-1, 2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]]
        valid_moves = []
        possible_moves.each do |move|
            x = move[0] + pos[0]
            y = move[1] + pos[1]
            if (x > 0 && x < 8) && (y > 0 && y < 8)
                valid_moves << [x, y] 
            end
        end
        valid_moves
    end

    def considered_positions
        considered_positions = [starting_pos]
    end

    def new_move_positions(pos)
        # copy = KnightPathFinder.valid_moves.map(&:dup)
        # @considered_positions.each do |position|
        #     if copy.include?(position)
        #         copy.delete(position)
        #     end
        # end
        
    end

end