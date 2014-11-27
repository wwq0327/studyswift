// Playground - noun: a place where people can play

import Cocoa

let courseNames = ["Python", "golang", "swift"]
for i in 0..<courseNames.count {
    courseNames[i]
}

let boolB = true

if boolB {
    println("这是真的")
}

// 定义
let userResult = (true, "wyatt", "haha")

// 访问
userResult.0 // output: true
userResult.1 // output: wyatt

//可以指定元素名称
let connType = (code:404, msg:"Not found")
connType.code
connType.msg

var age:Int?
println(age) // nil
age = 25
println(age) // "Optional(25)"
println(age!) // 解包

// 也可以这样
var name:String!
name = "google"
println(name)

var myAge:Int?

myAge = 23

if myAge != nil {
    println(myAge!)
} else {
    println("myAge还没有值")
}
