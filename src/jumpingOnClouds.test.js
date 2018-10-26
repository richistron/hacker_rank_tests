const jumpingOnClouds = require('./jumpingOnClouds');

describe('jumpingOnClouds', () => {
  it('case 1', () => {
    expect(jumpingOnClouds('0 0 1 0 0 1 0'.split(' '))).toBe(4);
  });
  it('case 2', () => {
    expect(jumpingOnClouds('0 0 0 1 0 0'.split(' '))).toBe(3);
  });
});
