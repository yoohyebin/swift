import Foundation

//Solution 1
func solution(_ num:Int, _ total:Int) -> [Int] {
    var answer = [Int]()
    var re = total/num
    var n = num/2
    
    if num%2 == 0{
        answer = Array(re-n+1...re+n)
    }else{
        answer = Array(re-n...re+n)
    }
    return answer
}

//Solution 2
func solution(_ num:Int, _ total:Int) -> [Int] {
    let base = (total - (num * (num + 1) / 2)) / num + 1
    return (0..<num).map { $0 + base }
}
