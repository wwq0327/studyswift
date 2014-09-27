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

// 无返回类型
func sayGoodbye(personName: String) {
    println("Goodbye, \(personName)!")
}

sayGoodbye("name")

//多重返回值函数（Functions with Multiple Return Values)
func count(string: String) -> (vowels: Int, consonants: Int, others: Int) {
    var vowels = 0, consonants = 0, others = 0
    for character in string {
        switch String(character).lowercaseString {
            case "a", "e", "i", "o", "u":
            ++vowels
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
        "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            ++consonants
        default:
            ++others
        }
    }
    return (vowels, consonants, others)
}

let total = count("my name is wyatt!")
println(total)

// 不定参数，多个返回值
func duoReturn(nums:Int...) -> (sum: Int, avg: Int) {
    var sum = 0, avg = 0
    for num in nums {
        sum += num
    }
    avg = sum / nums.count
    return (sum, avg)
}

let d = duoReturn(1, 2, 3, 4, 5)


