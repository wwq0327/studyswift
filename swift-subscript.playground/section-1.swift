// Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

struct TimesTable {
    let multiplier: Int
    subscript(index:Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
threeTimesTable[6]

//继承 与 重写

class Human {
    var name = "Human"
    var description: String { return "Name: \(name)" }
}

class Student: Human {
    var num = 12
    override var description: String { return super.description + " No. \(num)" }
}

var human = Human()
human.description

var student = Student()
student.description


