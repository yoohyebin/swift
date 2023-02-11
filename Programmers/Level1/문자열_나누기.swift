import Foundation

func solution(_ s:String) -> Int {
    var stringValue = s.map{String($0)}
    var x = stringValue[0], x_cnt = 0, not_x_cnt = 0
    var result = 0
    
    for i in stringValue{
        if x_cnt != 0 && x_cnt == not_x_cnt{
            result += 1
            x_cnt = 0
            not_x_cnt = 0
            x = i
        }
        
        if x == i {x_cnt += 1}
        else {not_x_cnt += 1}
    }
    
    return result+1
}
