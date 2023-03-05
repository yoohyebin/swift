import Foundation

//Solution 1
func solution(_ left:Int, _ right:Int) -> Int {
    var re = 0
    for i in left...right{
        var cnt = (1...i).map{$0}.filter{i%$0 == 0}.count
        cnt % 2 == 0 ? (re += i) : (re -= i)
    }
    return re
}

//Solution 2
func solution(_ left: Int, _ right: Int) -> Int {
    return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -i }.reduce(0, +)
}
