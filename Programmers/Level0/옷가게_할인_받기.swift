import Foundation

func solution(_ price:Int) -> Int {
    var p = price
    if price >= 500000 {p = Int(Double(price)*0.8)}
    else if price >= 300000 {p = Int(Double(price)*0.9)}
    else if price >= 100000 {p = Int(Double(price)*0.95)}
    
    return p
}
