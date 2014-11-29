#!/usr/bin/env xcrun swift

func fib(n: Int) -> Int {
    if n < 2 {
        return n
    } else {
        return fib(n-2) + fib(n-1)
    }
}

for i in 1..<40 {
    println(fib(i))
}