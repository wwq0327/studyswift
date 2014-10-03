//
//  main.swift
//  Closures
//
//  Created by wyatt on 14-10-3.
//  Copyright (c) 2014年 wyatt. All rights reserved.
//

import Foundation

println("Hello, World!")

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

var reversed = sorted(names, backwards)
println(reversed)