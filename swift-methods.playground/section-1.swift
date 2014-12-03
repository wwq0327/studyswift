// Playground - noun: a place where people can play

import UIKit

//方法是与某些特定类型相关联的函数。类、结构体、枚举都可以定义实例方法；
//实例方法为给定类型的实例封装了具体的任务与功能。类、结构体、枚举也可以定义类型方法；
//类型方法与类型本身相关联。类型方法与 Objective-C 中的类方法（class methods）相似。

// 实例方法
class Counter {
    // 类的实例属性
    var count = 0
    
    // 实例方法， 以下三个方法都是直接能属性count进行操作
    func increment () {
        count++
    }
    
    func incrementBy(amount: Int) {
        count += amount
    }
    
    func incrementByTimes(amount: Int, _ numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
    
    func reset() {
        count = 0
    }
}

let c = Counter()
c.count
c.increment()
c.count
c.increment()
c.count
c.incrementBy(5)
c.count
c.reset()
c.incrementByTimes(5, 3)

class Hello {
//    类方法
    class func say() {
        println("hello, world")
    }
}

Hello.say()

struct LevelTracker {
    static var highestUnlockedLevel = 1 // 已解锁的最高等级
    // 新等级一解锁，则更新已解锁的最高等级
    static func unlockLevel(level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    // 判断某个等级是否已被解锁，如果是则返回true
    static func levelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    var currentLevel = 1 // 玩家当前等级
    // 此方法用于在更新当前等级之前判断当前等级是否已被解锁，如果是的话，则重新设置当前等级。
    mutating func advanceToLevel(level: Int) -> Bool {
        if LevelTracker.levelIsUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func completedLevel(level:Int) {
        LevelTracker.unlockLevel(level+1)
        tracker.advanceToLevel(level+1)
    }
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "wyatt")
player.completedLevel(1)
println("Highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
player.tracker.advanceToLevel(5)




