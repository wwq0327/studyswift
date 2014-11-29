// Playground - noun: a place where people can play

import Cocoa
import Foundation

var str = "Hello, playground"

str.hasPrefix("Hello")

//首字母大写，需要导入Foundation
str.capitalizedString
//大写
str.uppercaseString
//小写
str.lowercaseString
//以上两方法都不会改变字符串本身的特性

//切换字符串
var str2 = "      hello, !!!     "
str2.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())

str2

// 切取空格，符号
str2.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: " ! ,"))

//split
var str3 = "welcome to play swift"
str3.componentsSeparatedByString(" ")
//str3

str3 = "welcome to play swift!Step-by-Step learn from now"

str3.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: " !-"))

// join

"-".join(["a", "b", "c"])


