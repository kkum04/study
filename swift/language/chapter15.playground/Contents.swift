import UIKit

// 15-1 for-in 구문과 맵 메서드의 사용 비교
//let numbers: [Int] = [0, 1, 2, 3, 4]
//
//var doubleNumbers: [Int] = [Int]()
//var strings: [String] = [String]()
//
//for number in numbers {
//    doubleNumbers.append(number * 2)
//    strings.append("\(number)")
//}
//
//print(doubleNumbers)
//print(strings)
//
//doubleNumbers = numbers.map({ (number: Int) -> Int in
//    return number * 2
//})
//
//strings = numbers.map({ (number: Int) -> String in
//    return "\(number)"
//})
//
//print(doubleNumbers)
//print(strings)


// 15-2 클로저 표현의 간략화
//let numbers: [Int] = [0, 1, 2, 3, 4]
//var doubledNumbers = numbers.map({ (number: Int) -> Int in
//    return number * 2
//})
//
//// 매개변수 및 반환 타입 생략
//doubledNumbers = numbers.map({ return $0 * 2 })
//print(doubledNumbers)
//
//// 반환 키워드 생략
//doubledNumbers = numbers.map({ $0 * 2 })
//print(doubledNumbers)
//
//// 후행 클로저 사용
//doubledNumbers = numbers.map { $0 * 2 }
//print(doubledNumbers)

//15-3 클로저의 반복 사용
//let evenNumbers: [Int] = [0, 2, 4, 6, 8]
//let oddNumbers: [Int] = [1, 3, 5, 7]
//let multiplyTwo: (Int) -> Int = { $0 * 2 }
//
//let doubleEvenNumbers = evenNumbers.map(multiplyTwo)
//print(doubleEvenNumbers)
//
//let doubleOddNumbers = oddNumbers.map(multiplyTwo)
//print(doubleOddNumbers)


// 15-4 다양한 컨테이너 타입에서의 맵의 활용
//let alphabetDictionary: [String: String] = ["a":"A", "b":"B"]
//var keys: [String] = alphabetDictionary.map { (tuple: (String, String)) -> String in
//    return tuple.0
//}
//print(keys)
//
//keys = alphabetDictionary.map { $0.0 }
//print(keys)
//
//var values = alphabetDictionary.map { $0.1 }
//print(values)


// 15-5 필터 메서드의 사용
//let numbers: [Int] = [0, 1, 2, 3, 4, 5]
//
//let evenNumbers: [Int] = numbers.filter { (number: Int) -> Bool in
//    return number % 2 == 0
//}
//print(evenNumbers)
//
//let oddNumbers: [Int] = numbers.filter { $0 % 2 == 1 }
//print(oddNumbers)


// 15-6 맵과 필터 메서드의 연계 사용
//let numbers: [Int] = [0,1,2,3,4,5]
//
//let mappedNumbers: [Int] = numbers.map { $0 + 3 }
//
//let evenNumbers: [Int] = mappedNumbers.filter { (number: Int) -> Bool in
//    return number % 2 == 0
//}
//print(evenNumbers)
//
//let oddNumbers: [Int] = numbers
//    .map {$0 + 3}
//    .filter { $0 % 2 == 1}
//print(oddNumbers)

// 15-7 리듀스 메서드의 사용 첫번째
//let numbers: [Int] = [1, 2, 3]
//
//var sum: Int = numbers.reduce(0, { (result: Int, next: Int) -> Int in
//    return result + next
//})
//
//// 축약
//var sum2: Int = numbers.reduce(0) { $0 + $1 }
//print(sum2)


// 15-7 리듀스 메서드의 사용 두번째
//let numbers: [Int] = [1, 2, 3]
//
//var sum: Int = numbers.reduce(into: 0, { (result: inout Int, next: Int) in
//    result += next
//})
//
//// 축약
//var sum2: Int = numbers.reduce(into: 0) { $0 += $1 }
//print(sum2)

// 맵, 필터, 리듀스 함께 사용
// 나의 비트코인 수익
//struct Coin {
//    let name: String
//    let inputMoney: Int
//    let profitRate: Double
//}
//
//var myConis = [Coin]()
//myConis.append(Coin(name: "비트코인", inputMoney: 1000, profitRate: 10))
//myConis.append(Coin(name: "리플", inputMoney: 10000, profitRate: 6))
//myConis.append(Coin(name: "KenCoin", inputMoney: 1000000, profitRate: 50.5))
//myConis.append(Coin(name: "도박", inputMoney: 5000, profitRate: -10.5))
//myConis.append(Coin(name: "투자 안함", inputMoney: 0, profitRate: -10.5))
//
//
//Double(10) * 10.5
//
//var todayProfit = myConis
//    .filter { $0.inputMoney > 0 }
//    .map { $0.inputMoney + Int(Double($0.inputMoney) * $0.profitRate / 100) }
//    .reduce(0) { $0 + $1 }
//print(todayProfit)
    
