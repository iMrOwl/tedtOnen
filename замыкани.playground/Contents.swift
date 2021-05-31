import UIKit

//// Замыкания это безымянная функция
//
//func a() {
//    print(1)
//}
//
//let aa = {
//    print(1)
//}
//
//aa()
//a()
//
//// Принятие параметров в закрытии
//
//let driving = { (place: String) in
//    print("I'm going to \(place) in my car")
//}
//
//driving("123")
//
//// Возврат значений из закрытия
//
//let drivingWithReturn = { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}
//
//let message = drivingWithReturn("London")
//print(message)
//
//// Замыкания как параметры
//
//let driving1 = {
//    print("I'm driving in my car")
//}
//
//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//
//travel(action: driving1)
//
//// Синтаксис завершающего закрытия
//
//func travel1(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//
//travel1() {
//    print("I'm driving in my car")
//}
//
//travel1 { // можем исключить скобки
//    print("I'm driving in my car")
//}
//
//// Использование замыканий в качестве параметров, когда они принимают параметры
//
//func travel(action: (String) -> Void) {
//    print("I'm getting ready to go.")
//    action("London")
//    print("I arrived!")
//}
//
//travel { (place: String) in
//    print("I'm going to \(place) in my car")
//}
//
//// Использование замыканий в качестве параметров, когда они возвращают значения
//
//func travel(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}
//
//travel { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}
//
//// Сокращенные имена параметров
//
//func travel1(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}
//
//travel1 { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}
//
//travel1 { place -> String in
//    return "I'm going to \(place) in my car"
//}
//
//travel1 { place in
//    return "I'm going to \(place) in my car"
//}
//
//travel1 { place in
//    "I'm going to \(place) in my car"
//}
//
//travel1 {
//    "I'm going to \($0) in my car"
//}
//
//// Замыкания с несколькими параметрами
//
//func travel(action: (String, Int) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London", 60)
//    print(description)
//    print("I arrived!")
//}
//
//travel {
//    "I'm going to \($0) at \($1) miles per hour."
//}
//
//// Энамы это перечесления, эт оу нас обьект
//
//
//
//let people = People.First
//
//
//enum Medal {
//    case gold
//    case silver
//}
//
//func aaaa(medal: Medal) {
//    switch medal {
//    case .gold:
//        print(1)
//    case .silver:
//    print(2)
//    default:
//            break
//    }
//}
//
//aaaa(medal: Medal.gold)
//
//enum Dey {
//    case one
//    case two
//
//    enum House {
//        case ff
//        case fff
//    }
//}
//
//let bbbb = Dey.House.ff
//
//
//
//enum DDDDD {
//    case fff(String)
//    case fffff(Int)
//}
//
//let dictionary: [String: DDDDD] = ["1": DDDDD.fff("123"), "2": DDDDD.fffff(1)]
//
//dictionary["1"]
//
//// классы и стурктуры
//
//class A {
//    var name:String
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//let dddd = A(name: "123")
//
//let ccc = dddd
//ccc.name = "124"
//dddd.name
//
//struct B {
//    var name: String
//}
//
//let vvvvv = B(name: "1234")
//
//var cccc = vvvvv
//cccc.name = "124"
//vvvvv.name
//
//class AA {
//    static var a = 10
//}
//
//AA.a
//
//
//class People1 {
//    func summa() {
//        print(1 + 1)
//    }
//}
//
//class Student: People1 {
//    override func summa() {
//        super.summa()
//
//    }
//}

protocol A {
    func summa(name: String, complition: ((String) -> Void))
}

extension A {
    
    func summa(name: String, complition: ((String) -> Void)) {
        
        complition("123")
    }
}

class B: A {
    
//    func summa() {
//       print(1 + 3)
//    }
}

let a: A = B()
a.summa(name: "1234") { name in
   
}

let attat = ["dasdad", "dasdasdaswe", "fwerwffsd"]

let newArray = attat.filter { text in
    return text.hasPrefix("A")
}

let newArray2 = attat.filter {
    return $0.hasPrefix("A")
}
