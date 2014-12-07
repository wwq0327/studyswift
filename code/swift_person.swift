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
