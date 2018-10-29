
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
  def initialize(str = '', n = 0, list = LinkedList)
    @list = LinkedList.new str.split('')
    @size = n
  end

  def count
    get_string.scan('a').size
  end

  def get_string
    @str = ''
    current_node = @list.head
    @size.times do
      @str += current_node.data
      current_node = current_node.next || @list.head
    end
    @str
  end
end
