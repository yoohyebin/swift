//Solution 1
func solution(_ polynomial:String) -> String {
    var polynomial = polynomial.split(separator: " ").map{String($0)}
    var x_num = 0, num = 0
    var answer = ""

    for p in polynomial{
        if p.contains("x"){
            if p == "x"{
                x_num += 1
            }else{
                x_num += Int(p.filter{$0 != "x"})!
            }
        }else if p != "+"{
            num += Int(p)!
        }
    }
    if x_num == 0 {return "\(num)"}
    else if num == 0 {
        if x_num == 1 {return "x"}
        else {return "\(x_num)x"}
    }else{
        if x_num == 1 {return "x + \(num)"}
        else {return "\(x_num)x + \(num)"}
    }
}

//Solution 2
func solution(_ polynomial: String) -> String {
    var xCount = 0
    var num = 0

    for s in polynomial.split(separator: " ") {
        if s.contains("x") {
            xCount += (s == "x" ? 1 : (Int(s.replacingOccurrences(of: "x", with: "")) ?? 0))
        } else if s != "+" {
            num += Int(s) ?? 0
        }
    }
    return (xCount != 0 ? xCount > 1 ? "\(xCount)x" : "x" : "") + (num != 0 ? "\((xCount != 0 ? " + " : ""))\(num)" : xCount == 0 ? "0" : "")
}
