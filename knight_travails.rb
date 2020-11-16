require_relative "polytreenode/polytreenode"

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

    attr_accessor :root, :root_node, :considered_positions
    def initialize(pos)
        @root = pos
        @root_node = PolyTreeNode.new(root)
        @considered_positions = [root]
    end   

    def new_move_positions(position) 
        new_moves = []
       self.class.valid_moves.each do |position|
         unless @considered_positions.include?(position)
            new_moves << position
            @considered_positions << position
         end
       end
       new_moves
    end

    def build_move_tree
        queue = root_node
        until queue.empty?
            ele = queue.shift
            new_moves.each do |move|
                (ele).add_child(PolyTreeNode.new(move))
            end
            ele.children.each {|child| queue << child}
        end
    end    
end