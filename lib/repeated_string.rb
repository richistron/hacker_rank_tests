
class ListNode
  def initialize(data)
    @data = data
    @next = nil
  end

  def set_next(node)
    @next = node
  end

  def next
    @next
  end

  def data
    @data
  end
end

class LinkedList
  def initialize(items = [], listNode = ListNode)
    @listNode = listNode
    @head = nil
    items.each do |item|
      add_node item
    end
  end

  def add_node(value)
    if @head.nil?
      @head = @listNode.new value
    else
      get_tail.set_next @listNode.new value
    end
  end

  def head
    @head
  end

  def size
    count = 0
    get_tail { count += 1}
    count
  end

  private
    def get_tail
      current_node = @head
      while current_node.next
        current_node = current_node.next
        yield current_node if block_given?
      end
      yield current_node if block_given?
      current_node
    end
end

class RepeatedString
  def initialize(str = '', n = 0)
    @size = n
    @str = str
  end

  def count
    res = @str.scan('a').size.to_f * @size.to_f / @str.size.to_f
    res.round
  end
end
