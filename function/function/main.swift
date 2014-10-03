//
//  main.swift
//  function
//
//  Created by wyatt on 14-10-3.
//  Copyright (c) 2014年 wyatt. All rights reserved.
//

import Foundation

// 外部参数名
func join(s1: String, s2: String, joiner: String) -> String {
    return s1 + joiner + s2
}


println(join("Hello", "world", ", "))


// 外部参数名调用
func join2(string s1: String, toString s2: String, withJoiner joiner: String) -> String {
    return s1 + joiner + s2
}

println(join2(string: "Hello", toString: "world", withJoiner: ", "))
println(join2(string: "wyatt", toString: "wang", withJoiner: "."))

// 简写外部参数名
func join3(#string: String, #toString: String, #withJoiner: String) -> String {
    return string + withJoiner + toString
}

println(join3(string: "Hello", toString: "world", withJoiner: ", "))


// 默认参数值
func join4(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}

println(join4("Hello", "world"))
println(join4("Hello", "world", joiner: ", "))
println(join4("Hello", "world", joiner: "==============="))

// 字符数量
println(countElements("hello"))

// 输入输出参数
func swapTwoInts(inout a: Int, inout b: Int) {
    let tempa = a
    a = b
    b = tempa
}

var someInt = 3
var anotherInt = 102
println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
swapTwoInts(&someInt, &anotherInt)
println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

// 使用函数类型
func addTwoInts(a: Int, b: Int) -> Int {
    return a + b
}

var mathFunction: (Int, Int) ->Int = addTwoInts

println("Result: \(mathFunction(2,3))")

// 类型推断
let anotherMathFunction = addTwoInts
println("Result: \(anotherMathFunction(3, 5))")

// 函数类型作为参数类型
func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
    println("Result: \(mathFunction(a, b))")
}

printMathResult(addTwoInts, 4, 6)

// 返回一个函数类型，嵌套函数
func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backwards ? stepBackward: stepForward
}

var currentValue = -4
let moveNearerToZero = chooseStepFunction(currentValue < 0)
while currentValue != 0 {
    println("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
println("zero!")


