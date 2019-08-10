require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end

  def count
    count_of_nodes = 0
    current_node = @head
    until current_node.nil?
      count_of_nodes += 1
      current_node = current_node.next_node
    end
    count_of_nodes
  end

  def to_string
    string = ""
    current_node = @head
    until current_node.nil?
      string += current_node.data + " "
      current_node = current_node.next_node
    end
    string[0..-2]
  end
end
