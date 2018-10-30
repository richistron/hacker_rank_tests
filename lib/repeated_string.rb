class RepeatedString
  def initialize(string = '', string_size = 0)
    @string = string
    @string_size = string_size
  end

  def count
    matches = @string.scan('a').size
    times = @string_size / @string.size
    diff = @string_size - ( @string.size * times )
    if diff === 0
      matches * times
    else
      @str = ''
      diff.times {|key| @str += @string.split('')[key]}
      matches * times + @str.scan('a').size
    end
  end
end
