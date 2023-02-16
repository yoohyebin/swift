import Foundation

//Solution 1
func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var today = today.split(separator: ".").map{Int(String($0))!}
    var dict = [String: Int]()
    var result = [Int]()
    
    for term in terms {
        let temp = term.split(separator: " ").map{String($0)}
        dict[temp[0]] = Int(temp[1])!
    }
    
    for (i, privacy) in privacies.enumerated() {
        let p = privacy.split(separator: " ").map{String($0)}
        var day = p[0].split(separator: ".").map{Int(String($0))!}
        
        if day[2] == 1{
            day[2] = 28
            day[1] -= 1
        }else{
            day[2] -= 1
        }
        
        day[1] += dict[p[1]] ?? 0
        if day[1] > 12{
            var t = day[1]/12
            t = day[1] % 12 == 0 ? t-1 : t
            
            day[1] %= 12
            day[1] = day[1] == 0 ? 12 : day[1]
            day[0] += t
        }
        
        if day[0] < today[0] {result.append(i+1)}
        else if day[0] == today[0]{
            if day[1] < today[1]{result.append(i+1)}
            else if day[1] == today[1] {
                if day[2] < today[2]{result.append(i+1)}
            }
        }
    }
    
    return result
}

//Solution 2
func solution(_ today: String, _ terms: [String], _ privacies: [String]) -> [Int] {
    var answer = [Int]()
    var termDict = [String: Int]()
    let date = getDate(today)

    for s in terms {
        let term = s.components(separatedBy: " ")

        termDict[term[0]] = Int(term[1])
    }
    for i in privacies.indices {
        let privacy = privacies[i].components(separatedBy: " ")

        if getDate(privacy[0]) + (termDict[privacy[1]] ?? 0) * 28 <= date {
            answer.append(i + 1)
        }
    }
    return answer
}


private func getDate(_ today: String) -> Int {
    let date = today.split(separator: ".")
    let year = Int(date[0]) ?? 0
    let month = Int(date[1]) ?? 0
    let day = Int(date[2]) ?? 0
    return (year * 12 * 28) + (month * 28) + day
}
