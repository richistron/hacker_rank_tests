require 'to_d_array'

describe 'toDArray' do

  it 'should fake' do
    arr = [
      [1, 1, 1,  0,  0,  0,],
      [ 0, 1, 0, 0, 0, 0 ],
      [1, 1, 1, 0, 0, 0],
      [0, 0, 2, 4, 4, 0],
      [0, 0, 0, 2, 0, 0],
      [0, 0, 1, 2, 4, 0]
    ]
    expect(ToDArray.new(arr).count).to be(19)
  end

  it 'case 2' do
    arr = [
      [-1, -1, 0, -9, -2, -2],
      [-2, -1, -6, -8, -2, -5],
      [-1, -1, -1, -2, -3, -4],
      [-1, -9, -2, -4, -4, -5],
      [-7, -3, -3, -2, -9, -9],
      [-1, -3, -1, -2, -4, -5]
    ]
    expect(ToDArray.new(arr).count).to be(-6)
  end

end
