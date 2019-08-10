require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
  end

  def count
    count_of_nodes = 0
    current_node = @head
    until current_node.nil?
      count_of_nodes += 1
      current_node = @head.next_node
    end
    count_of_nodes
  end

  def to_string
    @head.data
  end
end
