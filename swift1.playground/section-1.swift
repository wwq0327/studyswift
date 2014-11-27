// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

println(str)

let maxNum = 1000

var x = 0, y = 0, z = 0

//显示声明
var websiteName:String
websiteName = "http://google.com"

//相同类型一行声明，都为Double类型
var red, green, blue: Double


let bignum = 1_000_000
let bignum_a = 1_0000_0000

let num_a:Float = 1

let 姓名 = "张三"

if true
{
    println("这是真的")
}

//元组
let connectionResult = (code:404, msg:"Not Found")
//取出元组中的具体数据

connectionResult.code
connectionResult.msg

let loginResult:(Bool, String) = (true, "DotA大神")


//Optionals 可选值 或者是一个值，或者是没有值。。。没有值时为nil
var a:Int?
a = 12

//可选值的意义
let userInput = "18"

var age = userInput.toInt()
if age != nil {
    println("your age is \(age!)")
    age
    age!// 可选型数据解包
} else {
    println("Invalidate userInput")
}

// 可选值不支持强类型转换

let strA:String? = "test"
strA
strA!

let strB:String! = "test"
strB

