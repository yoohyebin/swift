import Foundation

func solution(_ n:Int) -> Int {
    if n == 1 {return 1}

    var num = 2, index = 2
    while true{
        num = num * (index+1)
        if num > n {return index}
        index += 1
    }
    return index
}
