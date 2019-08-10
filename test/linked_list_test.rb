require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_head_starts_nil
    assert_nil @list.head
  end

  def test_it_can_append
    @list.append("doop")

    assert_equal "doop", @list.head.data
    assert_nil @list.head.next_node
  end

  def test_it_can_count
    @list.append("doop")

    assert_equal 1, @list.count
  end

  def test_it_can_make_string_from_list
    @list.append("doop")

    assert_equal "doop", @list.to_string
  end
end
