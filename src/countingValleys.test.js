const countingValleys = require('./countingValleys');

describe('countingValleys', () => {
  it('case 1', () => {
    expect(countingValleys(8, 'UDDDUDUU')).toBe(1);
  });
  it('case 1', () => {
    expect(countingValleys(12, 'DDUUDDUDUUUD')).toBe(2);
  });
});
