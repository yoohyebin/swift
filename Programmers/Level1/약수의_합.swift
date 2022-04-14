func solution(_ n:Int) -> Int {
    return n != 0 ? (1...n).map{$0}.filter{n%$0 == 0}.reduce(0,+) : 0
}
