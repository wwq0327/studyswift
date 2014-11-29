// Playground - noun: a place where people can play

var courese = [76:"XXXX", 78:"XXXXXX", 127: "XXXXXX"]
var courese2: Dictionary<Int, String> = [76:"XXXX", 78:"XXXXXX", 127: "XXXXXX"]
var courese3:[Int:String] = [76:"XXXX", 78:"XXXXXX", 127: "XXXXXX"]

var dict1 = Dictionary<Int, String>()
var dict2 = [Int, String]()

courese.count
courese.isEmpty

courese[78]


if courese[79] == nil {
    courese[79] = "google"
}

courese


courese[79] = nil

courese

for (k, v) in courese {
    println("\(k) ===> \(v)")
}

[Int](courese.keys)
[String](courese.values)
