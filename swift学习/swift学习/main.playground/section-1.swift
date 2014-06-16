// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var optionalString: String? = "Hello"
optionalString == nil

var optString: String?
optString == nil

func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
getGasPrices()

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)

func avgOf(numbers: Int...) -> Int {
    var sum = 0
    var count = 0
    for number in numbers {
        sum += number
        count += 1
    }
    return sum/count
}

avgOf(1, 2, 3, 4, 5)

var firstLoop = 0
for i in 0...3 {  // 这一点很像ruby的语法
    firstLoop += i
}
firstLoop

// 函数作为返回值
func returnFifteen() -> Int
{
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

// 函数作为别一个函数的返回值
func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)

// 函数作为传入参数
func hasAnyMatches(list: Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [4, 5, 12, 14, 43,32,2]
hasAnyMatches(numbers, lessThanTen)

// 匿名函数
