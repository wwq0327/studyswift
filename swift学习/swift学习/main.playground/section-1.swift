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
