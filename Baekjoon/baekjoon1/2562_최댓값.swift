var array = [Int]()
for _ in 0..<9{
    array.append(Int(readLine()!)!)
}
print(array.max()!)
print(array.firstIndex(of: array.max()!)!+1)
