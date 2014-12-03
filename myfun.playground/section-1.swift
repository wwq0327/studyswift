// Playground - noun: a place where people can play

import Cocoa

func fib(n: Int) -> Int {
    if n < 2 {
        return n
    } else {
        return fib(n-1) + fib(n-2)
    }
}

for i in 0...20 {
    println(fib(i))
}