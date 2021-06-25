class Graph
  attr_accessor :nodes

  def initialize
    @nodes = []
  end

  def self.breadth_first_search(root)
    return if !root

    visited_nodes = {}
    queue = Queue.new
    queue.push(root)

    while !queue.empty?
      node = queue.pop

      visited_nodes[node] = true

      success = yield(node)
      return node if success

      node.children.each do |child|
        queue.push(child)
      end
    end

    return nil
  end

  class Node
    attr_accessor :value
    attr_accessor :children

    def initialize(value)
      @value = value
      @children = []
    end
  end
end

g = Graph.new

n1 = Graph::Node.new(1)
g.nodes << n1

n1.children << Graph::Node.new(2)
n1.children << Graph::Node.new(3)

p g

p Graph.breadth_first_search(n1) { |node| node.value == 3 }
