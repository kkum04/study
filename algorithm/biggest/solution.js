function solution(numbers) {
  const result =  numbers
    .sort((left, right) =>
      parseInt('' + left + right) > parseInt('' + right + left) ? -1 : 1
    )
    .map(it => it + '')
    .join('');

  return parseInt(result) === 0 ? '0' : result;
}

console.log(solution([6, 10, 2]))
console.log(solution([3, 30, 34, 5, 9]))
console.log(solution([0, 11, 2]))
console.log(solution([1, 11, 111, 1111]));
console.log(solution([10, 101]));
console.log(solution([0,0,0,1]));
console.log(solution([11, 12, 10]));
console.log(solution([21,212]));
console.log(solution([0,0,0,1000]));