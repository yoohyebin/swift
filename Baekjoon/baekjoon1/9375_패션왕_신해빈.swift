for _ in 0..<Int(readLine()!)!{
    var dict = [String: Int]()
    var re = 1
    for _ in 0..<Int(readLine()!)!{
        var input = readLine()!.split(separator: " ").map{String($0)}
        dict[input[1], default: 0] += 1
    }
    for i in dict{
        re *= (i.value + 1)
    }
    print(re - 1)
}
