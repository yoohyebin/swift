import Foundation

//Solution 1
func solution(_ X:String, _ Y:String) -> String {
    var x = [0,0,0,0,0,0,0,0,0,0]
    var y = [0,0,0,0,0,0,0,0,0,0]
    var union = ""

    for i in X{
        x[Int(String(i))!] += 1
    }

    for i in Y{
        y[Int(String(i))!] += 1
    }

    for i in (0..<10).reversed(){
        var minValue = min(x[i], y[i])
        if minValue != 0{
            union += String(repeating: String(i), count: minValue)
        }
    }

    if union.isEmpty{ return "-1" }

    return (union.first! == "0") ? "0" : union.map{String($0)}.joined()
}

//Solution 2
func solution(_ X:String, _ Y:String) -> String {
    let arrX = Array(X), arrY = Array(Y)
    let union = Set(arrX).intersection(arrY).sorted(by: >)
    var result = ""
    union.forEach{ key in
        result += String(repeating: key, count: min(arrX.filter{$0 == key}.count, arrY.filter{$0 == key}.count))
    }
    
    return result == "" ? "-1" : (result.first! == "0" ? "0" : result)
}
