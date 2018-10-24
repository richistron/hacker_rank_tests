# https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

class SockMerchant
  def initialize(size = 0, items = [])
    @groups = {}
    @size = size
    @items = items
  end

  def get_pairs
    @items.each do |i|
      @groups[i.to_s.to_sym] = 0 if @groups[i.to_s.to_sym].nil?
      @groups[i.to_s.to_sym] = @groups[i.to_s.to_sym] + 1 unless @groups[i.to_s.to_sym].nil?
    end
    @groups.values.map{|i| i / 2}.reduce 0, :+
  end
end

