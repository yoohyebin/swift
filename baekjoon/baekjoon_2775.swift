for _ in 0..<Int(readLine()!)!{
    var floor = Int(readLine()!)!
    var room = Int(readLine()!)!
    var n = [Int](1...room)
     
    for i in 0..<floor{
        for j in 1..<room{
            n[j] += n[j-1]
        }
    }
    print(n[room-1])
}
