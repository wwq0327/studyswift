//
//  main.swift
//  集合
//
//  Created by wyatt on 14-8-2.
//  Copyright (c) 2014年 wyatt. All rights reserved.
//

import Foundation

//println("Hello, World!")


var shoppingList = ["Eags", "Milk"]

println("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    println("The shopping list is empty.")
}else{
    println("The shopping list is not empty.")
}

shoppingList.append("Flour")
println("The shopping list contains \(shoppingList.count) items.")

shoppingList += "Baking Power"
println("The shopping list contains \(shoppingList.count) items.")

shoppingList += ["Cheese", "Butter"]
println("The shopping list contains \(shoppingList.count) items.")

shoppingList.insert("Maple Syrup", atIndex: 0)
println(shoppingList)

let mapleSyrup = shoppingList.removeAtIndex(0)
println(shoppingList)

for (k, v) in enumerate(shoppingList) {
    println("Item \(k+1): \(v)")
}

var someInts = Int[]()
println("someInts is of type Int[] with \(someInts.count) items。")

someInts.append(9)
println("someInts is of type Int[] with \(someInts.count) items。")

var airports: Dictionary<String, String> = ["TYO":"Tokyo", "DUB":"Dublin"]
for (key, value) in airports {
    println("\(key): \(value)")
}

let airportCode = Array(airports.keys)
println(airportCode)


