// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground! Step by Step learn Swift language from now!"

//range
//str.rangeOfString("Step")
//str.rangeOfString("Step", options: NSStringCompareOptions.BackwardsSearch)


str.startIndex
str.endIndex

let strRange = Range<String.Index>(start: str.startIndex, end: str.endIndex)

let startIndex:String.Index = str.startIndex
let endIndex:String.Index = advance(str.startIndex, 10)
let searchRange = Range<String.Index>(start:startIndex, end:endIndex)
//str.rangeOfString("Step", options: NSStringCompareOptions.CaseInsensitiveSearch, range: searchRange)

// 好复杂的写法，还是Python的写法好呀。
// 这里rangeOfString老是起不了作用，不知道是什么原因。

var insertIndex = advance(str.startIndex, 22)
str.insert("!", atIndex: insertIndex)

str.removeAtIndex(insertIndex)
str.removeRange(Range<String.Index>(start:str.startIndex, end:insertIndex))


