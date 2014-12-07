// Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//class Person {
//    let name: String
//    init(name: String) {
//        self.name = name
//        println("\(name) is being initialized")
//    }
//    
//    deinit {
//        println("\(name) is being deinitialized")
//    }
//}
//
//var reference1: Person?
//var reference2: Person?
//var reference3: Person?
//
//reference1 = Person(name: "John Appleseed")
//reference2 = reference1
//reference3 = reference1
//
//reference1 = nil
//reference2 = nil
//reference3 = nil
//

class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
    var apartment: Apartment?
    deinit { println("\(name) is being deinitialized")}
}

class Apartment {
    let number: Int
    init(number: Int) {
        self.number = number
    }
    weak var tenant: Person?
    deinit { println("Apartment #\(number) is being deinitialized")}
}

var john: Person?
var number73: Apartment?

john = Person(name: "John Appleseed")
number73 = Apartment(number: 73)

john!.apartment = number73
number73!.tenant = john

john = nil
number73 = nil


class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) { self.name = name }
    deinit { println("\(name) is being deinitialized") }
}

class CreditCard {
    let number: Int
    unowned let customer: Customer
    init(number: Int, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { println("Card #\(number) is being deinitialized") }
}

var wyatt: Customer?
wyatt = Customer(name: "Wyatt Appleseed")
wyatt!.card = CreditCard(number: 1234_5678_9012_3456, customer: wyatt!)

wyatt = nil

extension Double {
    var km: Double { return self * 1_000.0 }
    var m : Double { return self }
}

let oneInt = 1.2.km
println("\(oneInt)")

