var set = Set<Int>()
for _ in 0..<10{
    var a = Int(readLine()!)!
    set.insert(a%42)
}
print(set.count)
