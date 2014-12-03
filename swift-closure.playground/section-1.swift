// Playground - noun: a place where people can play

import UIKit

var langs = ["python", "golang", "swift", "C", "C++", "java"]

//var st4 = sorted(langs, {s1, s2 in s1 > s2})

// 第一种实现方式

func compareTwoString(s1: String, s2: String) -> Bool {
    return s1 > s2
}

var st1 = sorted(langs, compareTwoString)

var st2 = sorted(langs, {(s1: String, s2: String)->Bool in
    return s1 > s2
})

var st3 = sorted(langs, { s1, s2 in return s1 > s2})

st3



//st4

//var st5 = sorted(langs, {$0>$1})
//langs.sort({$0 > $1})

langs.sort(>)
sorted(langs, >)










