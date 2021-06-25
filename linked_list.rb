module LinkedList
  class Node
    attr_accessor :next
    attr_accessor :value

    def initialize(value)
      @value = value
    end

    def append_to_tail(value)
      node = self
      while node.next
        node = node.next
      end
      node.next = Node.new(value)
    end

    def inspect
      arr = []
      node = self
      while node
        arr << node.value
        node = node.next
      end
      arr
    end
  end

  def self.delete_node(head, value)
    if head.value == value
      return head.next
    end

    node = head
    while node.next
      if node.next.value == value
        node.next = node.next.next
        return head
      end
      node = node.next
    end

    return head
  end
end
