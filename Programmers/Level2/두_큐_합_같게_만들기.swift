import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    var q1 = queue1, q2 = queue2
    var s1 = queue1.reduce(0, +)
    var s2 = queue2.reduce(0, +)
    var result = 0
     var i = 0, j = 0
    
    if (s1+s2) % 2 != 0 {return -1}
    
    while true{
        if s1 > s2{
            let temp = q1[i]
            q1[i] = 0
            q2.append(temp)
            s1 -= temp
            s2 += temp
            result += 1
            i += 1
        }else if s1 < s2{
            let temp = q2[j]
            q2[j] = 0
            q1.append(temp)
            s1 += temp
            s2 -= temp
            result += 1
            j += 1
        }else{
            break
        }
        
        //최대 길이가 3000000 이기 때문에 저만큼 돌았으면 원래 상태로 돌아옴
        if result >= 300000 {
            result = -1
            break
        }
        
    }
    return result
}
