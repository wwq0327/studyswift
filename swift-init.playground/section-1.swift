// Playground - noun: a place where people can play

import Cocoa

class Human {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func say() -> String {
        return "Name: \(self.name), Age: \(self.age)"
    }
}

let human = Human(name: "wyatt", age: 35)
human.say()

class Student: Human {
    var num: Int
    
    init(name: String, age: Int, num: Int) {
        self.num = num
        super.init(name: name, age: age)
    }
    
    override func say() -> String {
        return super.say() + " num: \(num)"
    }
}

let student = Student(name: "tong", age: 8, num: 1212)
student.say()

var s1 = student
s1.name = "Haha"
s1
student

struct TestStruct {
    var name:String
}

var ts = TestStruct(name: "haha")
var myts = ts
myts.name = "wyatt"
ts.name
myts.name

var a = 2
var b = a
a
b
b = 3
a
var li:[Int] = [1, 2, 3, 4]
var li1 = li
li1.append(5)
li

struct SurveyQuestion {
    let text: String
    var response: String?
    
    init(text: String) {
        self.text = text
    }
    
    func ask() {
        println(text)
    }
}

let beetsQuestion = SurveyQuestion(text: "How about beets")
beetsQuestion.ask()

//值类型的构造器代理

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center: Point, size: Size) {
        let originX = center.x - (size.width/2)
        let originY = center.y - (size.height/2)
        self.init(origin: Point(x: originX, y: originY), size: size) // 相用了第二个构造器，使用了self关键字
    }
}

let basicRect = Rect()
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))


class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

let namedMeat = Food(name: "Bacon")
let mysteryMeat = Food()

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity:6)

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name.lowercaseString)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6),
]
breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    println(item.description)
}
