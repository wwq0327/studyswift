// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

assert(true)

let langs: [String] = ["python", "swift", "golang"]
for (i, j) in enumerate(langs) {
    println("\(i):\(j)")
}

contains(langs, "python")

var oldLangs = dropFirst(langs)

dump(langs)

