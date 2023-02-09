import Foundation

//Solution 1
func solution(_ babbling:[String]) -> Int {
    var baby = ["aya", "ye", "woo", "ma"]
    var answer = 0
    
    for b in babbling{
        var temp = b
        var cnt = 0
        
        for i in baby{
            if temp.contains(i){
                temp = temp.replacingOccurrences(of: i, with: " ")
                if temp.contains("  ") {break}
                cnt += (temp.filter{$0 == " "}.count * i.count)
                temp = b
            }
        }
        if cnt == b.count {answer += 1}
    }
    return answer
}

//Solution 2
func solution(_ babbling:[String]) -> Int {
    var count: Int = 0
    for element in babbling {
        var str = String(element)
        str = str.replacingOccurrences(of: "aya", with: "1")
        str = str.replacingOccurrences(of: "ye", with: "2")
        str = str.replacingOccurrences(of: "woo", with: "3")
        str = str.replacingOccurrences(of: "ma", with: "4")
        if Int(str) != nil && !str.contains("11") && !str.contains("22") && !str.contains("33") && !str.contains("44"){
            count += 1
        }
    }    
    return count
}

//Solution 3
func counting(_ word: String) -> Bool {
	let baby = ["aya", "ye", "woo", "ma"]
    var result = ""
    var lastWord = ""
    
    for w in word.map { String($0) } {
        result += w
    
        if baby.contains(result) && result != lastWord {
            lastWord = result
            result = ""
        }

    }
    return result.isEmpty
}

func solution(_ babbling:[String]) -> Int {
    return babbling.map { counting($0) }.filter { $0 }.count
}
