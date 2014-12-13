// Playground - noun: a place where people can play

import UIKit

//var a: Int
// T 点位类型名，调用时T，必须为什么类型，如String, Int, Double等
func swapTwoValud<T>(inout a: T, inout b: T) {
    let tmp = a
    a = b
    b = tmp
}

struct Stack<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}

// 当创建一个新单例并初始化时， 通过用一对紧随在类型名后的尖括号里写出实际指定栈用到类型，创建一个Stack实例，同创建Array和Dictionary一样：

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")

stackOfStrings.pop()
stackOfStrings
//
//func findIndex<T: Equatable>(array: T[], valueToFind: T) -> Int? {
//    for (index, value) in enumerate(array) {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}

//let doubleIndex = findIndex([3.14159, 0.1, 0.25], 9.3)
//doubleIndex

protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct StackP<T>: Container {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    mutating func append(item: T) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> T {
        return items[i]
    }
}

//var stack = StackP(items:[Int])
var stack = StackP(items: [1, 2, 3, 4])
stack.count

stack.append(2)
stack.pop()
stack



