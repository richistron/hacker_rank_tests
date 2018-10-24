require 'spec_helper'
require 'sock_merchant'

describe 'SockMerchant' do
  it 'should return 3' do
    arr = '10 20 20 10 10 30 50 10 20'
    arr = arr.split(' ').map {|s| s.to_i}
    pairs = SockMerchant.new(arr.size, arr).get_pairs
    expect(pairs).to be(3)
  end

  it 'should return 4' do
    arr = '1 1 3 1 2 1 3 3 3 3'
    arr = arr.split(' ').map {|s| s.to_i}
    pairs = SockMerchant.new(arr.size, arr).get_pairs
    expect(pairs).to be(4)
  end

  it 'should return 4' do
    arr = ['rojo', 'azul', 'amarillo', 'verde', 'rojo', 'rojo', 'amarillo']
    pairs = SockMerchant.new(arr.size, arr).get_pairs
    expect(pairs).to be(2)
  end
end