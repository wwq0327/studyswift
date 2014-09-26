// Playground - noun: a place where people can play

import Cocoa

func sayHello(personName: String) -> String {
    let greeting = "hello, " + personName + "!"
    return greeting
}

//println(sayHello("Anna"))
//println(sayHello("Brian"))

sayHello("wyatt")

// 多个参数
func halfOpenRangeLength(start: Int, end: Int) -> Int {
    return end - start
}

halfOpenRangeLength(1, 10)

// 无参
func sayHelloWorld() -> String {
    return "hello, world"
}

sayHelloWorld()

