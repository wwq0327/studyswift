// Playground - noun: a place where people can play

import Cocoa

var str2 = "I'm a immutable string\u{1F496}"

// blank string
var emptyString = ""
var emptyStringB = String() // 声明一个字符串类型

emptyString.isEmpty
str2.isEmpty

for c in str2 {
    println(c)
}

var ch: Character = "!"
str2.append(ch)

//str2 += ch

var str3 = "!!"
str2 + str3

// 计算字符串的长度
countElements(str2)

//var str4:NSString = str2
//str4.length
//
