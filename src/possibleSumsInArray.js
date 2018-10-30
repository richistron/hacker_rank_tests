const possibleSumsInArray = (arr, sum) => {
  const res = [];
  const used = [];

  arr.forEach(item => {
    if (( sum - item ) > 0) {
     const diff = sum - item;
     const index = arr.indexOf(diff);
     const is_used = used.some(_item => item === _item);
     if (arr[index] && arr[index] !== item && !is_used) {
       res.push([item, arr[index]]);
       used.push(arr[index]);
     }
    }
  });

  return res;
};

module.exports = possibleSumsInArray;
