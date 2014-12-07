// Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

struct Bank {
    static var coinsInBank = 10_000 // 银行总coins数量
    
    // 分发coins
    static func vendCoins(var numberOfCoinsToVend: Int) -> Int {
        // 分发前进行检查，查看Bank中是否有足够的coins，如果没有的话，就返回较小数
        numberOfCoinsToVend = min(numberOfCoinsToVend, coinsInBank)
        // 总的数量 - 分发数量
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    
    // 收集coins
    static func receiveCoins(coins: Int) {
        // 收回到Bank
        coinsInBank += coins
    }
}


class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        // 初始化，给一定数量的coins给玩家，分发之后，Bank数量会减少
        coinsInPurse = Bank.vendCoins(coins)
    }
    
    // 将玩家赢的coins从Bank中取出
    func winCoins(coins: Int) {
        coinsInPurse += Bank.vendCoins(coins)
    }
    // 回收coins
    deinit {
        Bank.receiveCoins(coinsInPurse)
    }
}


// 声明为可选变量，玩家可随时离开。设置为可选，例可以判断玩家是否还在游戏中
var playerOne: Player? = Player(coins: 100)
playerOne!.winCoins(200)
playerOne!.coinsInPurse
Bank.coinsInBank

playerOne = nil
playerOne?.coinsInPurse
Bank.coinsInBank

