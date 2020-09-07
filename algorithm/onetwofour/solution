function solution(n) {
    var answer = [];
    divide(n - 1, answer);

    return answer.join('');
}

function divide(n, result) {
    var oneTwoFour = ['1','2','4'];
    var quotient = parseInt(n / 3);

    result.unshift(oneTwoFour[n % 3]);
    if (quotient > 0) {
        return divide(quotient - 1, result)
    }
}