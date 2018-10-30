# [0][0] [0][1] [0][2]
#        [1][1]
# [2][0] [2][1] [2][2]
#
# [x+0][y] [x+0][y+1] [x+0][y+2]
#          [x+1][y+1]
# [x+2][y] [x+2][y+1] [x+2][y+2]
#
class ToDArray
  def initialize(arr)
    @arr = arr
  end

  def count
    @max_sum = nil
    @values = [{x: 0, y: 0}, {x: 0, y: 1}, {x: 0, y: 2}, {x: 1, y: 1}, {x: 2, y: 0}, {x: 2, y: 1}, {x: 2, y: 2}]
    @arr.each_with_index do |row, x|
      row.each_with_index do |_, y|
        invalid = @values.any? do |val|
          !is_valid(x + val[:x], y + val[:y])
        end
        @sum = 0
        unless invalid
          @values.each do |val|
            @sum += get_item(x + val[:x], y + val[:y])
          end
          if @max_sum.nil? || @max_sum < @sum
            @max_sum = @sum
          end
        end
      end
    end
    @max_sum
  end

  def get_item(x, y)
    @arr[x][y]
  end

  def is_valid(x, y)
    if !@arr[x].nil? and !@arr[x][y].nil?
      true
    else
      false
    end
  end
end
