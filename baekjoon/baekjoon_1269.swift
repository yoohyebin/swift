let _ = readLine()!
var a = Set(readLine()!.split(separator: " ").map{Int(String($0))!})
var b = Set(readLine()!.split(separator: " ").map{Int(String($0))!})

print("\(a.subtracting(b).count + b.subtracting(a).count)")
