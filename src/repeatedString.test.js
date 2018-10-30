
const repeatedString = require('./repeatedString');

describe('repeatedString', () => {
  it('case 1', () => {
    expect(repeatedString('aba', 9)).toBe(6);
    expect(repeatedString('aba', 10)).toBe(7);
  });

  it('case 2', () => {
    expect(repeatedString('a', 1000000000000)).toBe(1000000000000);
  });

  it('case 3', () => {
    expect(repeatedString('gfcaaaecbg', 547602)).toBe(164280);
  });
});
