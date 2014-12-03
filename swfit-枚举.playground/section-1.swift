// Playground - noun: a place where people can play

import UIKit

enum Directiion {
    case East
    case West
    case South
    case North
}


enum GameEnding {
    case Win
    case Lose
    case Draw
}

var yourScore: Int = 98
var enemyScore: Int = 100

var theGameEnding: GameEnding

if yourScore > enemyScore { theGameEnding = GameEnding.Win }
else if yourScore == enemyScore { theGameEnding = .Draw }
else { theGameEnding = .Lose }


switch theGameEnding {
case .Win: println("You win")
case .Lose: println("You lose")
case .Draw: println("It's a draw")
}

enum Month: Int {
    case Jan=1, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Otc, Nov, Dec
}

let curMonth: Month = .Nov
curMonth.rawValue

let nextMonth = Month(rawValue: 12)
nextMonth!.rawValue

enum VowelCharacter: Character {
    case A = "a"
    case E = "e"
    case I = "i"
    case O = "o"
    case U = "u"
}

let vowelA = VowelCharacter.A

var userInputChar: Character = "a"
if userInputChar == vowelA.rawValue {
    println("It's an 'a'")
} else {
    println("Not 'a'")
}

enum Barcode {
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

var productBarcodeA = Barcode.UPCA(8, 85909_51226, 3)
var productBarcodeB:Barcode = .QRCode("ABCDEFGHIJKLMNOP")




