class CloudNode
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

class CloudList
  def initialize(items = [])
    @head = nil
    items.each do |item|
     add item
    end
  end

  def head
    @head
  end

  def add(data)
    if @head.nil?
      @head = CloudNode.new data
    else
      get_tail.set_next CloudNode.new(data)
    end
  end

  private
    def get_tail
      current_node = @head
      while current_node.next do
        current_node = current_node.next
      end
      current_node
    end
end

def jumpingOnClouds(arr)
  list = CloudList.new arr
  current_node = list.head
  jumps = 0
  while current_node.next
    if current_node.next and current_node.next.next and current_node.next.next.data == '0'
      current_node = current_node.next.next
    else
      current_node = current_node.next
    end
    jumps = jumps + 1
  end
  jumps
end
