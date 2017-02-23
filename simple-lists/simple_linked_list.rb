class Node
  attr_accessor :data, :next

  def initialize(data, next_node)
    @data = data
    @next = next_node
  end
end

class LinkedList
  attr_accessor :head

  def initialize(data)
    @head = Node.new(data, nil)
  end

  def index_at(index)
    find_node(index).data if find_node(index)
  end

  def find_node(index)
    current_node = @head
    index.times do
      current_node = current_node.next
    end
    current_node
  end

  def insert_at_index(index, data)
    current_node = @head

    (index - 1).times do |i|
      if current_node.next
        current_node = current_node.next
      else
        new_node = Node.new(nil, nil)
        current_node.next = new_node
        current_node = new_node
      end
    end
    current_node.next = Node.new(data, current_node.next)
  end

  def unshift(new_data)
    @head = Node.new(new_data, @head)
  end

  def push(new_data)
    current_node = @head
    while current_node.next
      current_node = current_node.next
    end
    current_node.next = Node.new(new_data, nil)
  end

  def reverse

  end
end
