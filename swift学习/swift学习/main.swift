//
//  main.swift
//  swift学习
//
//  Created by wyatt on 14-6-16.
//  Copyright (c) 2014年 wyatt. All rights reserved.
//

import Foundation

println("Hello, World!")

// 变量
var username: String
username = "wyatt"
println("我的名字是\(username)")

// 常量
let label = "The width is"
let width = 98
let widthlabel = label + String(width)

println(widthlabel)


// 数组
var myName = ["wyatt", "wwq0327", "wyattwang"]
for name in myName {
    println(name)
}

// array
var myArray = ["wwq0327"]
myArray[0] = "wyatt"
println(myArray)

// 追加值
myArray.append("name")

println(myArray)

// 函数

func greet(name: String, day: String) -> String {
    return "Hello, \(name), today is \(day)"
}

println(greet("wyatt", "Sunday"))