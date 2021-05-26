import UIKit

struct Person {
    let name: Bool
    let nickname: String?
    let age: Int
    
    var isAdult: Bool {
        return age > 18
    }
}

//let yagom: Person = Person(name: "yagom", nickname: "bear", age: 100)
//let hana: Person = Person(name: "haha", nickname: "na", age: 100)
//let happy: Person = Person(name: "happy", nickname: nil, age: 3)
//
//let family: [Person] = [yagom, hana, happy]
//let names: [String] = family.map(\.name)
//let names2: [String] = family.map { $0.name }
//print(names)


let p: Person? = nil//Person(name: "aaa", nickname: nil, age: 40)

print(type(of: p?.name))


let bb: Optional<Bool> = nil

if (bb == true) {
    print("aaaa")
} else {
    print("bbbbb")
}

//struct CoordinatePoint {
//    var x: Int
//    var y: Int
//    var z: Int?
//    var k: Int?
//}
//
//var aa = CoordinatePoint(x: 1, y: 2)
//var bb = CoordinatePoint(x: 1, y: 2)
//var cb = CoordinatePoint(x: 1, y: 2, z: 3)
//var ab = CoordinatePoint(x: 1, y: 2, z: 3, k: 1)
//
//aa.x


//struct CoordinatePoint {
//    var x: Int = 0
//    var y: Int = 0
//}
//
//let yagomPoint: CoordinatePoint = CoordinatePoint()
//let wizplanPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)
//
//yagomPoint.x
//yagomPoint.y
//wizplanPoint.x
//wizplanPoint.y
//
//
//class Position {
//    // 변경 가능한 프로퍼티
//    let point: CoordinatePoint
//
//    // 변경 불가능한 프로퍼티
//    var name: String = "Unknown"
//
//
//    init(name: String, currentPoint: CoordinatePoint) {
//        self.name = name
//        self.point = currentPoint
//    }
//}
//
//
////let yagomPosition: Position = Position() // 가능
////yagomPosition.point = yagomPoint // 초기값을 이렇게 따로 할당해야 하고, let으로 선언 할 수 없음
////yagomPosition.name = "yagom"
//let yagomPosition2: Position = Position(name: "Ken", currentPoint: CoordinatePoint()) // 가능


//
//class Position {
//
//
//    // 변경 불가능한 프로퍼티
//    let name: String
//
//    // class는 기본값을 지정하지 않으면, 이니셜라이저를 따로 정의해야 한다.
//    init(name: String) {
//        self.name = name
//        self.name = name + "aa"
//    }
//}


//struct BasicInformation {
//    var name: String
//    var age: Int
//}
//
//var yagomInfo: BasicInformation = BasicInformation(name: "yagom", age: 99)
//yagomInfo.age = 100
//yagomInfo.name = "Seba"
//
//let sebaInfo: BasicInformation = BasicInformation(name: "Seba", age: 99)
////sebaInfo.age = 200 // error
////seba.name = "yagom" // error
//
//
//
//class Person {
//    var height: Float = 0.0 // = 0.0을 없앤다면?
//    var weight: Float = 0.0
//
//    deinit {
//        print("Person 클래스의 인스턴스가 소멸됩니다.")
//    }
//}
//
//var yagom: Person = Person()
//yagom.height = 123.0
//yagom.weight = 11.0
//
//let jenny: Person = Person()
//jenny.height = 123.0
//jenny.weight = 11.1
//
//// 코드 9-6
//yagomInfo.age = 100
//var friendInfo: BasicInformation = yagomInfo
//
//yagomInfo.age
//friendInfo.age
//
//yagomInfo.age = 999
//
//yagomInfo.age
//friendInfo.age
//
//var friend = yagom
//yagom.height
//friend.height
//
//yagom.height = 185.0
//
//yagom.height
//friend.height
//
//func changeBasicInfo(info: BasicInformation) {
//    var copiedInfo: BasicInformation = info
//    copiedInfo.age = 1
//}
//
//func changePerson(info: Person) {
//    info.height = 155.3
//}
//
//yagomInfo.age
//changeBasicInfo(info: yagomInfo)
//yagomInfo.age
//
//yagom.height
//changePerson(info: yagom)
//yagom.height


// 코드 10 - 1
//struct CoordinatePoint {
//    var x: Int
//    var y: Int
//}
//
//// 구조체는 기본적으로 자장 프로퍼티를 매개변수로 갖는 이니셜라이져가 있다.
//let yagomPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)

// 사람의 위치 정보
//class Position {
//    // 변경 가능한 프로퍼티
//    var point: CoordinatePoint
//
//    // 변경 불가능한 프로퍼티
//    let name: String
//
//    // class는 기본값을 지정하지 않으면, 이니셜라이저를 따로 정의해야 한다.
//    init(name: String, currentPoint: CoordinatePoint) {
//        self.name = name
//        self.point = currentPoint
//    }
//}

//let yagomPosition = Position(name: "yagom", currentPoint: yagomPoint)


// 코드 10-2
//struct CoordinatePoint {
//    var x: Int = 0
//    var y: Int = 0
//}
//
//let yagomPoint: CoordinatePoint = CoordinatePoint()
//let wizplanPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)
//
//yagomPoint.x
//yagomPoint.y
//wizplanPoint.x
//wizplanPoint.y
//
//
//class Position {
//    // 변경 가능한 프로퍼티
//    var point: CoordinatePoint = CoordinatePoint()
//
//    // 변경 불가능한 프로퍼티
//    var name: String = "Unknown"
//
//
////    init(name: String, currentPoint: CoordinatePoint) {
////        self.name = name
////        self.point = currentPoint
////    }
//}
//
//
//let yagomPosition: Position = Position() // 가능
////let yagomPosition2: Position = Position(name: "Ken", currentPoint: CoordinatePoint()) // 가능


//코드 10 - 3
//struct CoordinatePoint {
//    var x: Int
//    var y: Int
//}
//
//class Position {
//    var point: CoordinatePoint?
//    let name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//// 이름만 필수로 받고, 위치는 나중에 입력 받을 수 있도록 허용
//let yagomPosition = Position(name: "yagom")
//yagomPosition.point = CoordinatePoint(x: 10, y: 10)


// 코드 10-4
//struct CoordinatePoint {
//    var x: Int = 0
//    var y: Int = 0
//}
//
//class Position {
//    lazy var point: CoordinatePoint = CoordinatePoint()
//    let name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//let yagomPosition = Position(name: "yagom")
//yagomPosition.point // point 프로퍼티의 CoorinatePoint 인스턴스가 생성된다.


// 코드 10-5
//struct CoordinatePoint {
//    var x: Int
//    var y: Int
//
//    // 대칭점을 구하는 메서드 - 접근자
//    func oppositePoint() -> Self {
//        return CoordinatePoint(x: -x, y: -y)
//    }
//
//    mutating func setOppositePoint(opposite: CoordinatePoint) {
//        x = -opposite.x
//        y = -opposite.y
//    }
//}
//
//var yagomPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)
//yagomPosition
//yagomPosition.oppositePoint()
//yagomPosition.setOppositePoint(opposite: CoordinatePoint(x: 15, y: 10))
//yagomPosition


// 코드 10-6
//struct CoordinatePoint {
//    var x: Int
//    var y: Int
//
//
//    var opppositePoint: CoordinatePoint {
//        get {
//            return CoordinatePoint(x: -x, y: -y)
//        }
//
//        set(opposite) {
//            x = -opposite.x // == -newValue.x
//            y = -opposite.y
//        }
//    }
//}
//
//var yagomPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)
//yagomPosition
//yagomPosition.opppositePoint
//yagomPosition.opppositePoint = CoordinatePoint(x: 15, y: 10)
//yagomPosition


// 코드 10-9
//class Account {
//    var credit: Int = 0 {
//        willSet {
//            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
//        }
//        didSet {
//           print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
//        }
//    }
//}
//
//let myAccount: Account = Account()
//myAccount.credit = 1000


// 코드 10-10
//class Account {
//    var credit: Int = 0 {
//        willSet {
//            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
//        }
//        didSet {
//            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
//        }
//    }
//
//    var dollarValue: Double {
//        get {
//            return Double(credit) / 1000.0
//        }
//
//        set {
//            credit = Int(newValue * 1000)
//            print("잔액을 \(newValue)달러로 변경 중입니다.")
//        }
//    }
//}
//
//class ForeignAccount: Account {
//    override var dollarValue: Double {
//        willSet {
//            print("잔액이 \(dollarValue)달러에서 \(newValue)달러로 변경될 예정입니다.")
//        }
//
//        didSet {
//            print("잔액이 \(oldValue)달러에서 \(dollarValue)달러로 변경되었습니다.")
//        }
//    }
//}
//
//let myAccount: ForeignAccount = ForeignAccount()
//myAccount.credit = 1000
//
//myAccount.dollarValue = 2


// 코드 10-12
//class AClass {
//    // 저장 타입 프로퍼티
//    static var typeProperty: Int = 0
//
//    // 저장 인스턴스 프로퍼티
//    var instanceProperty: Int = 0 {
//        didSet {
//            Self.typeProperty = instanceProperty + 100
//        }
//    }
//
//    static var typeComputedProperty: Int {
//        get {
//            return typeProperty
//        }
//
//        set {
//            typeProperty = newValue
//        }
//    }
//}
//
//AClass.typeProperty = 123
//AClass.typeProperty
//
//let classInstance: AClass = AClass()
//classInstance.instanceProperty = 100
//
//AClass.typeProperty
//AClass.typeComputedProperty


// 코드 10-13
//class Account {
//    static let dollarExchangeRate: Double = 1000.0
//
//    var credit: Int = 0
//
//    var dollarValue: Double {
//        get {
//            return Double(credit) / Self.dollarExchangeRate
//        }
//
//        set {
//            credit = Int(newValue * Account.dollarExchangeRate)
//        }
//    }
//}


// 코드 10-14
//class Person {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//struct Stuff {
//    var name: String
//    var owner: Person
//}
//
//print(type(of: \Person.name))
//print(type(of: \Stuff.name))


// 코드 10-17
//struct Person {
//    let name: String
//    let nickname: String?
//    let age: Int
//
//    var isAdult: Bool {
//        return age > 18
//    }
//}
//
//let yagom: Person = Person(name: "yagom", nickname: "bear", age: 100)
//let hana: Person = Person(name: "haha", nickname: "na", age: 100)
//let happy: Person = Person(name: "happy", nickname: nil, age: 3)
//
//let family: [Person] = [yagom, hana, happy]
//let names: [String] = family.map(\.name)


//let numbers: [Int] = [0, 1, 2, 3, 4]
//var doubledNumbers = numbers.map({ (number: Int) -> Int in
//    return number * 2
//})

// 매개변수 및 반환 타입 생략
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
//
////15-3 클로저의 반복 사용
//let evenNumbers: [Int] = [0, 2, 4, 6, 8]
//let oddNumbers: [Int] = [1, 3, 5, 7]
//let multiplyTwo: (Int) -> Int = { $0 * 2 }
//
//evenNumbers.forEach { print($0) }
//
//let doubleEvenNumbers = evenNumbers.map(multiplyTwo)
//print(doubleEvenNumbers)
//
//let doubleOddNumbers = oddNumbers.map(multiplyTwo)
//print(doubleOddNumbers)


struct Coin {
    let name: String
    let inputMoney: Int
    let profitRate: Double
}

var myConis = [Coin]()
myConis.append(Coin(name: "비트코인", inputMoney: 1000, profitRate: 10))
myConis.append(Coin(name: "리플", inputMoney: 10000, profitRate: 6))
myConis.append(Coin(name: "KenCoin", inputMoney: 1000000, profitRate: 50.5))
myConis.append(Coin(name: "도박", inputMoney: 5000, profitRate: -10.5))
myConis.append(Coin(name: "투자 안함", inputMoney: 0, profitRate: -10.5))


var a: Int = 10
var b: Double = 10.5

var todayProfit = myConis
    .filter { $0.inputMoney > 0 }
    .map { $0.inputMoney + Int(Double($0.inputMoney) * $0.profitRate / 100) }
    .reduce(0) { $0 + $1 }
print(todayProfit)
