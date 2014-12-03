// Playground - noun: a place where people can play

import Cocoa

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

// 存储的为常量，所以不能修改
//rangeOfThreeItems.length = 4


//如果在创建一个结构体实例，并赋给一个常量时，则无法修改实例的任何属性
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

//以下两句是无效的, 即便定义了变量存储属性
//rangeOfFourItems.length = 1
//rangeOfFourItems.firstValue = 6

// 延迟存储属性 当第一次被调用之时才会计算其初始值的属性。
class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]() // 初始化一个成员为String类型的空数组
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
manager.data

println(manager.importer.fileName)

// 计算属性
struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point() // 原点坐标
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.height/2)
        }
    }
}

var square = Rect(origin: Point(x:0.0, y:0.0),
    size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x:15.0, y:15.0)
println("square.origin is now at (\(square.origin.x), \(square.origin.y))")

//属性观察器
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            println("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                println("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200

stepCounter.totalSteps = 360

// 类型属性
struct SomesStructure {
    static var fileName = "data"
}

println(SomesStructure.fileName)
SomesStructure.fileName = "data.txt"
println(SomesStructure.fileName)

struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
AudioChannel.maxInputLevelForAllChannels

rightChannel.currentLevel = 11
AudioChannel.maxInputLevelForAllChannels

