class RepeatedString
  def initialize(str = '', n = 0)
    @size = n
    @arr = str.split ''
  end

  def count
    @res = ''
    @key = 0
    @size.times do
      if @arr[@key].nil?
        @key = 0
        @res += @arr[@key]
      else
        @res += @arr[@key]
        @key += 1
      end
    end
    @res.scan('a').size
  end
end
