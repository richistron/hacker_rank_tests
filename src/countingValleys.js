const countingValleys = (_, s) => {
  const arr = s.split('');
  let position = 0;
  let valleys = 0;
  arr.forEach(item => {
    if (item === 'U') {
      position++;
    }
    else {
      position--;
    }

    if (item === 'U' && position === 0) {
      valleys++;
    }
  });
  return valleys;
};

module.exports = countingValleys;
