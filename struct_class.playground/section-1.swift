// Playground - noun: a place where people can play

import UIKit

// 类与结构体
// 类是引用类型，引用的是已存在的实例本身
class Student {
    var name: String?
}

var s1 = Student()
s1.name = "Student s1"
var s2 = s1
s2.name = "Wyatt"
s1.name



struct Human {
    var name = "wyatt"
}


let s3 = Human(name: "name")

var s4 = s3
s4.name = "MMMMM"
s3.name


let add = { (a: Int, b: Int) -> Int in return a + b }
add(1, 2)