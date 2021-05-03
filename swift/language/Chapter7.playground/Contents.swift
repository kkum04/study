import UIKit

func hello(name: String) -> String{
    return "Hello \(name)!"
}

let helloJenny: String = hello(name: "Jenney")
print(helloJenny)

func introduce(name: String) -> String {
    "제 이름은 " + name + "입니다."
}

let introduceJenny: String = introduce(name: "Jenny")
print(introduceJenny)

func sayHello(from myName: String, name: String) -> String {
    return "Hello \(name)! I'm \(myName)"
}

print(sayHello(from: "yagom", name: "Jenny"))

func sayHello(_ name: String, times: Int = 3) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)! "
    }
    
    return result
}

print(sayHello("Hana"))

func sayHelloToFriend(me: String, friends names: String...) -> String {
    var result: String = ""
    
    for friend in names {
        result += "Hello \(friend) "
    }
    
    return result + "I'm \(me)!"
}

print(sayHelloToFriend(me: "yagom", friends: "ken", "ryo"))


var numbers: [Int] = [1,2,3]

func nonReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func referenceParameter(_ arr: inout [Int]) {
    arr[1] = 1
}

nonReferenceParameter(numbers)
print(numbers[1])

referenceParameter(&numbers)
print(numbers[1])

typealias CalculateTwoInts = (Int, Int) -> Int

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: CalculateTwoInts = addTwoInts
print(mathFunction(1, 2))

mathFunction = multiplyTwoInts
print(mathFunction(2, 5))
