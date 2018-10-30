require 'repeated_string'

describe 'RepeatedString' do
  it 'case 1' do
    repeatedList = RepeatedString.new'aba', 10
    expect(repeatedList.count).to be(7)
  end

  it 'case 2' do
    repeatedList = RepeatedString.new'a', 1000000000000
    expect(repeatedList.count).to be(1000000000000)
  end

  it 'case 3' do
    repeatedList = RepeatedString.new'gfcaaaecbg', 547602
    expect(repeatedList.count).to be(164280)
  end
end
