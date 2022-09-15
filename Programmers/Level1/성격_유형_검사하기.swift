import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dic = ["R": 0, "T": 0, "C": 0, "F": 1, "J": 0, "M": 0, "A": 0, "N": 0]
    var answer = ""
    
    for i in 0..<survey.count{
        if choices[i] < 4{
            var n = String(Array(survey[i])[0])
            dic[n]! += 4 - choices[i]
        }
        else if choices[i] > 4{
            var n = String(Array(survey[i])[1])
            dic[n]! += choices[i] - 4
        }
    }
    
    answer += dic["R"]! >= dic["T"]! ? "R" : "T"
    answer += dic["C"]! >= dic["F"]! ? "C" : "F"
    answer += dic["J"]! >= dic["M"]! ? "J" : "M"
    answer += dic["A"]! >= dic["N"]! ? "A" : "N"
    
    return answer
}
