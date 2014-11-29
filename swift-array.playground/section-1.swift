// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var arr1: [Int] = []
arr1.append(1)

arr1 = [Int]() // 清空这个数组
arr1.append(3)

var arr2 = [2, 3, 4]

var arr3 = arr1 + arr2


// 数组的基本操作

arr3.count
arr3.isEmpty

arr3.append(10)

arr3 += [12, 34]

arr3

arr3.removeAtIndex(0)
arr3

arr3.removeLast()
arr3

arr3[2...4]

for item in arr3 {
    println(item)
}

for (i, k) in enumerate(arr3) {
    println("\(i) ----\(k)")
}