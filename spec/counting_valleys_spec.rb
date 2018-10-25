require 'spec_helper'
require 'counting_valleys'

# https://www.hackerrank.com/challenges/counting-valleys/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup&h_r=next-challenge&h_v=zen
describe 'countingValleys' do
  it 'case 1' do
    val = countingValleys(nil, 'DDUDDUUDUU')
    expect(val).to be(1)
  end
  it 'case 2' do
    val = countingValleys(nil, 'UDDDUDUU')
    expect(val).to be(1)
  end
  it 'case 3' do
    val = countingValleys(nil, 'DDUUDDUDUUUD')
    expect(val).to be(2)
  end
end
