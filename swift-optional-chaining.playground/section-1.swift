// Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingNumber != nil {
            return buildingNumber
        } else {
            return nil
        }
    }
}

class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {  // 设置属性的值
        return rooms.count
    }
    subscript(i: Int) -> Room {
        return rooms[i]
    }
    func printNumberOfRooms() {
        println("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Person {
    var residence: Residence?
}

let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    println("John's residence has \(roomCount) room(s)")
} else {
    println("Unable to retrieve the number of rooms.")
}

if (john.residence?.printNumberOfRooms() != nil) {
    println("It was possible to print the number of rooms.")
} else {
    println("It was not possible to print the number of rooms.")
}

protocol MyPro {
    func hello(name: String) -> String
}

class MyClass: MyPro {
    func hello(name: String) -> String {
        return "hello, " + name
    }
}

let myClass = MyClass()
myClass.hello("wyatt")
