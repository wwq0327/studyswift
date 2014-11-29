#!/usr/bin/env xcrun swift

let chapterNames = [
    "第一章 XXXX",
    "第二章 XXX",
    "第二章 XXX",
    "第三章 XXX",
]

var count = 0
for name in chapterNames {
    if name.hasPrefix("第二章") {
        count++
    }
}

println(count)