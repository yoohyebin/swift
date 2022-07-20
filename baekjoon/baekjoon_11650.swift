var arr = [[Int]]()
for _ in 0..<Int(readLine()!)!{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
arr.sort{
    if $0[0] == $1[0]{
        return $0[1] < $1[1]
    }
    return $0[0] < $1[0]
}

for i in arr{
    print("\(i[0]) \(i[1])")
}
