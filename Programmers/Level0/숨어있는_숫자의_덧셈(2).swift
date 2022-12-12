import Foundation

//Solution 1
func solution(_ my_string:String) -> Int {
    var temp = ""
    var arr = [Int]()
    
    for s in my_string{
        if s.isNumber {
            temp += String(s)
        }else if !temp.isEmpty{
            arr.append(Int(temp)!)
            temp = ""
        }
    }
     if !temp.isEmpty{
        arr.append(Int(temp)!)
    }
    return arr.reduce(0, +)
}

//Solution 2
func solution(_ my_string:String) -> Int {
    let pattern = #"\d+"#
    let regex = try! NSRegularExpression(pattern: pattern)
    let range = NSRange(my_string.startIndex..<my_string.endIndex, in: my_string)
    let matches = regex.matches(in: my_string, range: range)

    return matches.reduce(0) { $0 +
        Int(NSString(string: my_string).substring(with: $1.range))!
    }
}
