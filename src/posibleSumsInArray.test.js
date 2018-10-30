const possibleSumsInArray = require('./possibleSumsInArray');

describe('possibleSumsInArray', () => {
  it('test case 1', () => {
    const res = possibleSumsInArray([1, 2, 3], 4);
    // expect(res).toEqual([[1, 3], [2, 2], [3, 1]]);
    // expect(res).toEqual([[1, 3], [3, 1]]);
    expect(res).toEqual([[1, 3]]);
  });

  it('test case 2', () => {
    const test = [];
    for (let i = 0; i < 1000000; i++) {
      test.push(i);
    }
    const res = possibleSumsInArray(test, 54);
    expect(res).toEqual(
      [[0, 54], [1, 53], [2, 52], [3, 51], [4, 50], [5, 49], [6, 48], [7, 47], [8, 46], [9, 45], [10, 44], [11, 43], [12, 42], [13, 41], [14, 40], [15, 39], [16, 38], [17, 37], [18, 36], [19, 35], [20, 34], [21, 33], [22, 32], [23, 31], [24, 30], [25, 29], [26, 28]]
    );
  });
});
