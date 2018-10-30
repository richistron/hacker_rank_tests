
const repeatedString = (str = '', size) => {
  const exp = new RegExp(/a/g);
  const matches = str.match(exp).length;
  const times = parseInt(size / str.length);
  const diff = size - ( str.length * times );

  if (diff > 0) {
      let rest = '';
      for(let i = 0; i < diff; i++) {
        rest += str.split('')[i];
      }
      let more_matches = rest.match(exp) || [];
      return ( matches * times ) + more_matches.length;
  }

  return matches * times;
};

module.exports = repeatedString;
