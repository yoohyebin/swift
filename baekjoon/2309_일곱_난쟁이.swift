var arr = [Int]()
var sum = 0

for i in 0..<9{
    var n = Int(readLine()!)!
    arr.append(n)
    sum += n
}

outerLoop: for i in 0..<8{
    for j in i+1..<9{
        if sum - arr[i] - arr[j] == 100{
            arr[i] = -1
            arr[j] = -1
            break outerLoop
        }
    }
}
for a in arr.filter{$0 != -1}.sorted(){
    print("\(a)")
}
