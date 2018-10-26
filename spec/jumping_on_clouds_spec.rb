require 'jumping_on_clouds'

describe'jumpingOnClouds' do
  it 'case 1' do
    expect(jumpingOnClouds('0 0 1 0 0 1 0'.split(' '))).to be(4);
  end
  it 'case 2' do
    expect(jumpingOnClouds('0 0 0 1 0 0'.split(' '))).to be(3);
  end
end
