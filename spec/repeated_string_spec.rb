require 'repeated_string'

describe 'LinkedList' do
  it 'a and b' do
    list = LinkedList.new ['a', 'b']
    expect(list.head.data).to eq('a')
    expect(list.head.next.data).to eq('b')
    expect(list.size).to eq(2)
  end

  it 'a, b and c' do
    list = LinkedList.new ['a', 'b', 'c']
    expect(list.head.data).to eq('a')
    expect(list.head.next.data).to eq('b')
    expect(list.head.next.next.data).to eq('c')
    expect(list.size).to eq(3)
  end
end

describe 'RepeatedString' do
  it 'case 1' do
    repeatedList = RepeatedString.new'aba', 10
    str = 'abaabaabaa'
    expect(str.size).to be(10)
    expect(repeatedList.get_string).to eq(str)
    expect(repeatedList.count).to be(7)
  end

  it 'case 2' do
    repeatedList = RepeatedString.new'c', 1000000000000
    expect(repeatedList.count).to be(1000000000000)
  end
end
