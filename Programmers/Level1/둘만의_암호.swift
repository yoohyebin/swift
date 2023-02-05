import Foundation

//Solution 1
func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    func find(_ ch: Int) -> String{
        var cnt = 0, pos = 1
        var target = ch
        while cnt < index{
            pos = pos > 26 ? 1 : pos
            target = ch+pos > 122 ? ch+pos-26 : ch+pos

            if !skip.contains(String(UnicodeScalar(target)!)){
                cnt += 1
            }
            pos += 1
        }
        return target > 122 ? String(UnicodeScalar(target-26)!) : String(UnicodeScalar(target)!)
    }

    var result = ""

    for i in s.map{$0}{
        result += find(Int(i.asciiValue!))
    }

    return result
}

//Solution2
func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let filtered = "abcdefghijklmnopqrstuvwxyz".filter { !skip.contains($0) }.map { $0 }
    let maps = filtered.enumerated().reduce(into: [:]) { dict, v in
        dict[v.element] = filtered[(v.offset+index) % filtered.count]
    }

    return s.map { String(maps[$0]!) }.joined()
}
