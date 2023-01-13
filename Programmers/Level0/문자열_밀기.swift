import Foundation

//Solution 1
func solution(_ A:String, _ B:String) -> Int {
    if A == B {return 0}
    var sValue = A
    for i in 1..<sValue.count{
        var temp = sValue.removeLast()
        sValue.insert(temp, at: sValue.startIndex)
        if sValue == B {return i}
    }

    return -1
}

//Solution 2
func solution(_ A:String, _ B:String) -> Int {
    let arr = (A+A).components(separatedBy: B)
    return arr.count == 1 ? -1 : arr[1].count
}
