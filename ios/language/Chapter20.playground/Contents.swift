import UIKit


// 코드 20-1 타입의 프로토콜 채택
//struct SomeStruct : AProtocol, AnotherProtocol {
//    // 구조체 정의
//}
//
//class SomeClass : AProtocol, AnotherProtocol {
//    // 클래스 정의
//}
//
//enum SomeEnum : AProtocol, AnotherProtocol {
//    // 열거형 정의
//}

// 코드 20-2 SuperClass를 상속받는 클래스의 프로토콜 채택
//class SomeClass: SuperClass, AProtocol, AnotherProtocol {
//  // Super Class를 먼저 적는다.
//}

// 코드 20-3 프로퍼티 요구
//protocol SomeProtocol {
//    var settableProperty: String { get set }
//    var notNeedToBeSettableProperty: String { get }
//}
//
//protocol AnotherProtocol {
//    static var someTypeProperty: Int { get set }
//    static var anotherTypeProperty: Int { get }
//}

// 코드 20-4 Sendable 프로토콜과 Sendable 프로토콜을 준수하는 MEssage와 Mail 클래스
//protocol Sendable {
//    var from: String { get }
//    var to: String { get }
//}
//
//class Message: Sendable {
//    var sender: String
//    var from: String {
//        return self.sender
//    }
//
//    var to: String
//
//    init(sender: String, receiver: String) {
//        self.sender = sender
//        self.to = receiver
//    }
//}
//
//class Mail: Sendable {
//    var from: String
//    var to: String
//
//    init(sender: String, receiver: String) {
//        self.from = sender
//        self.to = receiver
//    }
//}


// 코드 20-6 Resettable 프로토콜의 가변 메서드 요구
//protocol Resettable {
//    mutating func reset()
//}
//
//class Person: Resettable {
//    var name: String?
//    var age: Int?
//
//    func reset() {
//        self.name = nil
//        self.age = nil
//    }
//}
//
//struct Point: Resettable {
//    var x: Int = 0
//    var y: Int = 0
//
//
//    mutating func reset() {
//        self.x = 0
//        self.y = 0
//    }
//}
//
//enum Direction: Resettable {
//    case east, west, north, unknown
//
//    mutating func reset() {
//        self = Direction.unknown
//    }
//}


// 코드 20-7 프로토콜의 이니셜라이저 요구와 구조체의 이니셜라이저 요구 구현
//protocol Named {
//    var name: String { get }
//
//    init(name: String)
//}
//
//struct Pet: Named {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}


// 코드 20-8 클래스의 이니셜라이저 요구 구현
//protocol Named {
//    var name: String { get }
//
//    init(name: String)
//}
//class Person: Named {
//    var name: String
//
//    required init(name: String) {
//        self.name = name
//    }
//}

// 코드 20-9 상속 불가능한 클래스의 이니셜라이저 요구 구현
//protocol Named {
//    var name: String { get }
//
//    init(name: String)
//}
//
//final class Person: Named {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}

// 코드 20-10 상속받은 클래스의 이니셜라이저 요구 구현 및 재정의
protocol Named {
    var name: String { get }
    
    init(name: String)
}

class School {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class MiddleSchool: School, Named {
    required override init(name: String) {
        super.init(name: name)
    }
}

// 20-12 프로토콜의 상속
//protocol Readable {
//    func read()
//}
//
//protocol Writeable {
//    func write()
//}
//
//protocol ReadSpeakable: Readable {
//    func speak()
//}
//
//protocol ReadWriteSpeakable: Readable, Writeable {
//    func speak()
//}
//
//class SomeClass: ReadWriteSpeakable {
//    func read() {}
//    func write() {}
//    func speak() {}
//}

// 20-13 클래스 전용 프로토콜의 정의
protocol Readable {
    func read()
}

protocol Writeable {
    func write()
}

protocol ClassOnlyProtocol: class, Readable, Writeable {
    
}

class SomeClass: ClassOnlyProtocol {
    func read() {}
    func write() {}
}

//struct SomeStruct: ClassOnlyProtocol {
//
//}


// 20-16 프로토콜의 선택적 요구
import Foundation

@objc protocol Moveable {
    func walk()
    @objc optional func fly()
}

class Tiger: NSObject, Moveable {
    func walk() {
        
    }
}

class Bird: NSObject, Moveable {
    func walk() {}
    
    func fly() {}
}
