import UIKit

struct BasicInformation {
    var name: String
    var age: Int
}

var yagomInfo: BasicInformation = BasicInformation(name: "yagom", age: 99)
yagomInfo.age = 100
yagomInfo.name = "Seba"

let sebaInfo: BasicInformation = BasicInformation(name: "Seba", age: 99)
//sebaInfo.age = 200 // error
//seba.name = "yagom" // error



class Person {
    var height: Float = 0.0 // = 0.0을 없앤다면?
    var weight: Float = 0.0
    
    deinit {
        print("Person 클래스의 인스턴스가 소멸됩니다.")
    }
}

var yagom: Person = Person()
yagom.height = 123.0
yagom.weight = 11.0

let jenny: Person = Person()
jenny.height = 123.0
jenny.weight = 11.1

// 코드 9-6
yagomInfo.age = 100
var friendInfo: BasicInformation = yagomInfo

yagomInfo.age
friendInfo.age

yagomInfo.age = 999

yagomInfo.age
friendInfo.age

var friend = yagom
yagom.height
friend.height

yagom.height = 185.0

yagom.height
friend.height

func changeBasicInfo(info: BasicInformation) {
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
}

func changePerson(info: Person) {
    info.height = 155.3
}

yagomInfo.age
changeBasicInfo(info: yagomInfo)
yagomInfo.age

yagom.height
changePerson(info: yagom)
yagom.height


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


// 코드 10-18, 10-19
//class LevelClass {
//    var level: Int = 0 {
//        didSet {
//            print("Level \(level)")
//        }
//    }
//
//    func levelUp() {
//        print("Level Up!")
//        level += 1
//    }
//
//    func levelDown() {
//        print("Level Down")
//        level -= 1
//        if level < 0 {
//            reset()
//        }
//    }
//
//    func jumpLevel(to: Int) {
//        print("Jump to \(to)")
//        level = to
//    }
//
//    func reset() {
//        print("Reset")
//        level = 0
//    }
//}
//
//struct LevelStruct {
//    var level: Int = 0 {
//        didSet {
//            print("Level \(level)")
//        }
//    }
//
//    mutating func levelUp() {
//        print("Level Up!")
//        level += 1
//    }
//
//    mutating func levelDown() {
//        print("Level Down")
//        level -= 1
//        if level < 0 {
//            reset()
//        }
//    }
//
//    mutating func jumpLevel(to: Int) {
//        print("Jump to \(to)")
//        level = to
//    }
//
//    mutating func reset() {
//        print("Reset")
//        level = 0
//    }
//}
//
//var levelClassInstance: LevelClass = LevelClass()
//levelClassInstance.levelUp()
//levelClassInstance.levelDown()
//levelClassInstance.levelDown()
//levelClassInstance.jumpLevel(to: 3)


// 코드 10-20, 10-21
//class LevelClass {
//    var level: Int = 0
//
//    func jumpLevel(to level: Int) {
//        print("Jump to \(level)")
//        self.level = level
//    }
//
//    func reset() {
//        //self = LevelClass() // error
//    }
//}
//
//struct LevelStruct {
//    var level: Int = 0
//
//    mutating func levelUp() {
//        print("Level Up!")
//        level += 1
//    }
//
//    mutating func reset() {
//        print("Reset")
//        self = LevelStruct()
//    }
//}
//
//var levelStructInstance: LevelStruct = LevelStruct()
//levelStructInstance.levelUp()
//print(levelStructInstance.level)
//
//levelStructInstance.reset()
//print(levelStructInstance.level)


// 코드 10-22
//struct Puppy {
//    var name: String = "멍멍이"
//
//    func callAsFunction() {
//        print("멍멍")
//    }
//
//    func callAsFunction(destination: String) {
//        print("\(destination)으로 달려갑니다.")
//    }
//
//    mutating func callAsFunction(name: String) {
//        self.name = name
//    }
//}
//
//var doggy: Puppy = Puppy()
//doggy.callAsFunction()
//doggy()
//
//doggy.callAsFunction(destination: "집")
//doggy(destination: "집")
//
//print(doggy.name)
//doggy(name: "삐삐")
//print(doggy.name)


// 코드 10-23
//class AClass {
//    static func staticTypeMethod() {
//        print("AClass staticTypeMethod")
//    }
//
//    class func classTypeMethod() {
//        print("AClass classTypeMethod")
//    }
//}
//
//class BClass : AClass {
////    override static func staticTypeMethod() {
////
////    }
//
//    override class func classTypeMethod() {
//
//    }
//}
