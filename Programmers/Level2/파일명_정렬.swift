func solution(_ files:[String]) -> [String] {
    let tokens = files.map({ s -> (String, [String]) in
    var head = [Character](), number = [Character]()
        
    for c in s {
        let cha = Character(extendedGraphemeClusterLiteral: c)
            
        if head.isEmpty {
            head.append(cha)
        } else {
            if !cha.isNumber, number.isEmpty {
                head.append(cha)
            } else if cha.isNumber, !head.isEmpty {
                number.append(cha)
            } else if !cha.isNumber, !head.isEmpty, !number.isEmpty {
                break
            }
        }
    }
        
    return (s, [head.map({String($0)}).joined(), number.map({String($0)}).joined()])
    })

    let sorted = tokens.sorted(by: { (a, b) -> Bool in
        let aArr = a.1
        let bArr = b.1

        for (aStr, bStr) in zip(aArr, bArr) {
            if aStr.lowercased() != bStr.lowercased() {
                if let fi = Int(aStr) {
                    if fi != Int(bStr)! {
                        return fi < Int(bStr)!
                    }
                } else {
                    return aStr.lowercased() < bStr.lowercased()
                }
            }
        }
        return false
    }).map{ $0.0 }
    
    return sorted
}
