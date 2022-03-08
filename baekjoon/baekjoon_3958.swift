//Solution1
let n = Int(readLine()!)!

for _ in 0..<n{
    var array = Array(readLine()!).map{String($0)}
    var sum = 0
    var temp = ""
     
    for i in array{
        if i == "O"{ temp += "o"}
        else {temp = ""}
        sum += temp.count
    }
    print(sum)
}

//Solution2
let n = Int(readLine()!)!
for _ in 0..<n {
    print(readLine()!.split{$0=="X"}.map{$0.count*($0.count+1)/2}.reduce(0, +))
}
