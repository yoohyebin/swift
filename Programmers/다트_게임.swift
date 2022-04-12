func solution(_ dartResult:String) -> Int {
    var current = -1
    var ten = 0
    var re = [0, 0, 0]
    
    for i in dartResult{
        switch i{
        case "0"..."9":
            if ten == 0{
                current += 1
                re[current] = Int(String(i))!
            }
            else{
                re[current] = 10
            }
            if i == "1"{
                ten = 1
            }
            break
        case "S":
            ten = 0
            break
        case "D":
            ten = 0
            re[current] *= re[current]
            break
        case "T":
            ten = 0
            re[current] = re[current] * re[current] * re[current]
            break
        case "*":
            if(current == 0){
                re[current] *= 2
            }else{
                re[current-1] *= 2
                re[current] *= 2
            }
            break
        case "#":
            re[current] *= -1
            break
        default:
            break
        }
    }
    
    return re.reduce(0,+)
}
