// Playground - noun: a place where people can play

import UIKit

var arr:[Int]


func squares(num: Int) -> [Int] {
    var n: Int
    var square:[Int] = [0, 1, 4]
    var alpha:[Int] = [1]
    var beta = [Int]()
    
    for n=2; n < num-1; n++ {
        alpha[n] = square[n] - square[n-1]
        beta[n] = alpha[n] - alpha[n-1]
        square[n+1] = square[n] + square[n-1]
    }
    return square
}

squares(5)