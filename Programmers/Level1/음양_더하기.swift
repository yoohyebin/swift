import Foundation

//Solution 1
func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var a = 0

    for i in 0..<absolutes.count{
        if signs[i]{
            a += absolutes[i]
        }
        else{
            a -= absolutes[i]
        }
    }

    return a
}

//Solution 2
func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return (0..<absolutes.count).map{signs[$0] ? absolutes[$0] : -absolutes[$0]}.reduce(0,+)
}
