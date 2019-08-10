require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("plop")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_data
    assert_equal "plop", @node.data
  end

  def test_next_node_is_nil
    assert_equal nil, @node.next_node
  end
end
