// Playground - noun: a place where people can play

import UIKit

func sayHello(name: String?) -> String {
    let result = "Hello " + (name ?? "Guest") + "!!"
    return result
}

var nickname:String?
nickname = "wyatt"
println(sayHello(nickname))

func endCnversation() {
    println("Hello, world")
}

endCnversation()

// 使用元组让函数返回多个值
func maxminScores(scores:[Int]) -> (maxscore:Int, minscore:Int)? {
    if scores.isEmpty {
        return nil
    }
    var curmax = scores[0], curmin = scores[0]
    
    for score in scores[1..<scores.count] {
        // 遍历数组中的所有数，将取得的数与初始值进行比较，取大和小，再将取得的
        // 的值再与数组中的值进行比较，取大与小。
        curmax = max(curmax, score)
        curmin = min(curmin, score)
    }
    return (curmax, curmin)
}
var userSocores:[Int]? = [12, 900, 572, 3245, 9999, 1203]
userSocores = userSocores ?? []

if let result = maxminScores(userSocores!) {
    println("The maximum user score is :\(result.maxscore)") // 可以根据返回值的名称进行调用
}

func testA() -> (Int, Int) {
    return (1, 2)
}

let rt = testA()
(rt.0, rt.1)

// 内部参数名和外部参数名

//可变参数 
func add(a:Int, b:Int, others:Int...) -> Int {
    var sum:Int = a + b
    
    for i in others {
        sum += i
    }
    return sum
}

println(add(1, 2))
println(add(1, 2, 3))

// 需要个性参数时，需要声明var, 不影响变量本身，
func toBinary(var num:Int) -> String {
    var result: String = ""
    while num != 0 {
        result = String(num%2) + result
        num /= 2
    }
    return result
}

var num = 60

toBinary(num)

num

// ---------------------------------
var arr = [Int]()
for _ in 1...20 {
    arr.append(Int(arc4random()%100))
}


func compareTwoInts1(a: Int, b: Int) -> Bool { return a > b }

sorted(arr, compareTwoInts1)


