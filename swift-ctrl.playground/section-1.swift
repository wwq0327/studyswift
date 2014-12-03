// Playground - noun: a place where people can play

import UIKit

var arr = [Int]()
for var i = 0; i < 100; i++ {
    arr.append(Int(arc4random() % 1000))
}
arr.sort(<)

var min_num = 0, max_num = arr.count
var mid_num:Int
var target = Int(arc4random()%1000)

while min_num < max_num {
    mid_num = (min_num + max_num) / 2
    arr[min_num]
    
    if arr[mid_num] == target {
        println("\(target) is found in index \(mid_num)")
        break
    } else if arr[mid_num] > target {
        max_num = mid_num - 1
    } else {
        min_num = mid_num + 1
    }
}


if min_num >= max_num {
    println("Cannot found \(target) in arr")
}

var rating: Character = "A"

switch rating {
    case "A", "a":
        println("Great")
    case "B":
        println("Just so-so.")
    default:
        println("it's Bad")
}