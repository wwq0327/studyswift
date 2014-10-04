//
//  main.swift
//  Enumerations
//
//  Created by wyatt on 14-10-4.
//  Copyright (c) 2014年 wyatt. All rights reserved.
//

import Foundation

println("Hello, World!")

enum CompassPoint {
    case North
    case South
    case East
    case West
}

let somePlanet = CompassPoint.East
switch somePlanet {
case .East:
    println("hello")
default:
    println("world")
}