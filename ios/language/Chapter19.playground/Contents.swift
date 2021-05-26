import UIKit

// 코드 19-1
// c 언어
//double value = 3.3
//int convertedValue = (int)value
//convertedValue = 5.5

//스위프트
//var value: Double = 3.3
//var convertedValue: Int = Int(value)
//convertedValue = 5.5 // error

// 코드 19-2 int 구조체의 다양한 이니셜라이저 정의
//public struct Int : FixedWidthInteger, SignedInteger {
//    public init(bitPattern x: UInt)
//    public init(_ source: Float)
//    public init?(exactly source: Float)
//}

// 코드 19-3 실패 가능한 Int 이니셜라이저
//var stringValue: String = "123"
//var integerValue: Int? = Int(stringValue)
//
//print(integerValue)
//
//stringValue = "A123"
//integerValue = Int(stringValue)
//
//print(integerValue)

// 코드 19-4 Coffee 클래스와 Coffee 클래스를 상속받은 Latte와 Americano 클래스
//class Coffee {
//    let name: String
//    let shot: Int
//
//    var description: String {
//        return "\(shot) shot(s) \(name)"
//    }
//
//    init(shot: Int) {
//        self.shot = shot
//        self.name = "coffee"
//    }
//}
//
//class Latte: Coffee {
//    var flavor: String
//
//    override var description: String {
//        return "\(shot) shot(s) \(flavor) latte"
//    }
//
//    init(flavor: String, shot: Int) {
//        self.flavor = flavor
//        super.init(shot: shot)
//    }
//}
//
//class Americano: Coffee {
//    var iced: Bool
//
//    override var description: String {
//        return "\(shot) shot(s) \(iced ? "iced" : "hot") americano"
//    }
//
//    init(shot: Int, iced: Bool) {
//        self.iced = iced
//        super.init(shot: shot)
//    }
//}

// 19-5 데이터 타입 확인
//let coffee: Coffee = Coffee(shot: 1)
//print(coffee.description)
//
//let myCoffee: Americano = Americano(shot: 2, iced: false)
//print(coffee.description)
//
//let yourCoffee: Latte = Latte(flavor: "green tea", shot: 3)
//print(yourCoffee.description)
//
//print(coffee is Coffee)
//print(coffee is Americano)
//print(coffee is Latte)
//
//print(myCoffee is Coffee)
//print(yourCoffee is Coffee)
//
//print(myCoffee is Latte)
//print(yourCoffee is Latte)

// 19-6 메타 타입
//protocol SomeProtocol {}
//class SomeClass: SomeProtocol {}
//
//let intType: Int.Type = Int.self
//let stringType: String.Type = String.self
//let classType: SomeClass.Type = SomeClass.self
//let protocolProtocol: SomeProtocol.Protocol = SomeProtocol.self
//
//var someType: Any.Type
//
//someType = intType
//print(someType)
//
//someType = stringType
//print(someType)
//
//someType = classType
//print(classType)
//
//someType = protocolProtocol
//print(someType)


// 19-7 type(:of) 함수와 self의 사용
//class Coffee {
//    let name: String
//    let shot: Int
//
//    var description: String {
//        return "\(shot) shot(s) \(name)"
//    }
//
//    init(shot: Int) {
//        self.shot = shot
//        self.name = "coffee"
//    }
//}
//
//class Latte: Coffee {
//    var flavor: String
//
//    override var description: String {
//        return "\(shot) shot(s) \(flavor) latte"
//    }
//
//    init(flavor: String, shot: Int) {
//        self.flavor = flavor
//        super.init(shot: shot)
//    }
//}
//
//class Americano: Coffee {
//    var iced: Bool
//
//    override var description: String {
//        return "\(shot) shot(s) \(iced ? "iced" : "hot") americano"
//    }
//
//    init(shot: Int, iced: Bool) {
//        self.iced = iced
//        super.init(shot: shot)
//    }
//}
//
//let coffee: Coffee = Coffee(shot: 1)
//let myCoffee: Americano = Americano(shot: 2, iced: false)
//let yourCoffee: Latte = Latte(flavor: "green tea", shot: 3)
//
//print(type(of: coffee) == Coffee.self)
//print(type(of: coffee) == Americano.self)
//print(type(of: coffee) == Latte.self)
//
//print(type(of: coffee) == Americano.self)
//print(type(of: myCoffee) == Americano.self)
//print(type(of: yourCoffee) == Americano.self)
//
//
//print(type(of: coffee) == Latte.self)
//print(type(of: myCoffee) == Latte.self)
//print(type(of: yourCoffee) == Latte.self)
//
//
// 코드 10-8 Latte 타입의 인스턴스를 참조하는 Coffee 타입 actingConstant 상수
//let actingConstant: Coffee = Latte(flavor: "vanilla", shot: 2)
//print(actingConstant.description)


// 코드 19-9 다운캐스팅
//class Coffee {
//    let name: String
//    let shot: Int
//
//    var description: String {
//        return "\(shot) shot(s) \(name)"
//    }
//
//    init(shot: Int) {
//        self.shot = shot
//        self.name = "coffee"
//    }
//}
//
//class Latte: Coffee {
//    var flavor: String
//
//    override var description: String {
//        return "\(shot) shot(s) \(flavor) latte"
//    }
//
//    init(flavor: String, shot: Int) {
//        self.flavor = flavor
//        super.init(shot: shot)
//    }
//}
//
//class Americano: Coffee {
//    var iced: Bool
//
//    override var description: String {
//        return "\(shot) shot(s) \(iced ? "iced" : "hot") americano"
//    }
//
//    init(shot: Int, iced: Bool) {
//        self.iced = iced
//        super.init(shot: shot)
//    }
//}
//
//let coffee: Coffee = Coffee(shot: 1)
//let myCoffee: Americano = Americano(shot: 2, iced: false)
//let yourCoffee: Latte = Latte(flavor: "green tea", shot: 3)
//
//if let actingOne: Americano = coffee as? Americano {
//    print("This is Americano")
//} else {
//    print(coffee.description)
//}
//
//if let actingOne: Latte = coffee as? Latte {
//    print("This is Latte")
//} else {
//    print(coffee.description)
//}
//
//if let actingOne: Coffee = coffee as? Coffee {
//    print("This is coffee")
//} else {
//    print(coffee.description)
//}


// Success
//let castedCoffee: Coffee = yourCoffee as! Coffee

// 런타임 오류
//let castedAmericano: Americano = coffee as! Americano

// 코드 19-11 AnyObject의 타입 확인
//class Coffee {
//    let name: String
//    let shot: Int
//
//    var description: String {
//        return "\(shot) shot(s) \(name)"
//    }
//
//    init(shot: Int) {
//        self.shot = shot
//        self.name = "coffee"
//    }
//}
//
//class Latte: Coffee {
//    var flavor: String
//
//    override var description: String {
//        return "\(shot) shot(s) \(flavor) latte"
//    }
//
//    init(flavor: String, shot: Int) {
//        self.flavor = flavor
//        super.init(shot: shot)
//    }
//}
//
//class Americano: Coffee {
//    var iced: Bool
//
//    override var description: String {
//        return "\(shot) shot(s) \(iced ? "iced" : "hot") americano"
//    }
//
//    init(shot: Int, iced: Bool) {
//        self.iced = iced
//        super.init(shot: shot)
//    }
//}
//
//func checkType(of item: AnyObject) {
//    if item is Latte {
//        print("item is Latte")
//    } else if item is Americano {
//        print("item is Americano")
//    } else if item is Coffee {
//        print("item is Coffee")
//    } else {
//        print("Unknown Type")
//    }
//}
//
//let coffee: Coffee = Coffee(shot: 1)
//let myCoffee: Americano = Americano(shot: 2, iced: false)
//let yourCoffee: Latte = Latte(flavor: "green tea", shot: 3)
//let actingConstant: Coffee = Latte(flavor: "vanilla", shot: 2)
//
//checkType(of: coffee)
//checkType(of: myCoffee)
//checkType(of: yourCoffee)
//checkType(of: actingConstant)


