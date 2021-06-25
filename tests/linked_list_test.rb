require 'test/unit'
require_relative 'linked_list'

class LinkedListTest < Test::Unit::TestCase
  def test_initialization
    node = LinkedList::Node.new(1)
    assert_equal 1, node.value
  end

  def test_append
    node = LinkedList::Node.new(1)
    node.append_to_tail(2)
    node.append_to_tail(3)

    assert_equal node.inspect, [1, 2, 3]
  end

  def test_deletion
    node = LinkedList::Node.new(1)
    node.append_to_tail(2)
    node.append_to_tail(3)

    new_list = LinkedList.delete_node(node, 2)

    assert_equal new_list.inspect, [1, 3]
  end
end
