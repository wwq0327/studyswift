//
//  main.swift
//  流控制
//
//  Created by wyatt on 14-8-10.
//  Copyright (c) 2014年 wyatt. All rights reserved.
//

import Foundation

for index in 1...5 {
    println("\(index) times 5 is \(index * 5)")
}

// 忽略循环变量，打印3的10次方
let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}

println("\(base) to the power of \(power) is \(answer)")