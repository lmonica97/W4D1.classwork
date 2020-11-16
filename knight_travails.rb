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
        valid_moves #1,2 and 2,1
    end

    def considered_positions
        @considered_positions = [starting_pos] #00
    end

    def new_move_positions(position) 
       self.class.valid_moves.each do |position|
        @considered_positions << position  if !@considered_positions.include?(position)
       end
       @considered_positions    
    end



    class ChessTreeNode
        def initialize(initial_pos)
            self.build_move_tree
        end
    end

    self.root_node
    #stores intial knight's position as an CTN node instance --> "root"
    ChessTreeNode.new(initial_pos)
    end
    
    def build_move_tree
        self.root_node
        @starting_node = @considered_positions

    end    

    def find_path(final_position)
        # finds the path from origin to final_pos 
    end

end