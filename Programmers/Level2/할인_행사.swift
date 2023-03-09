import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var answer = 0
    var dict = [String: Int]()
    var discountDict = [String: Int]()
    
    for i in 0..<10{
        discountDict[discount[i], default: 0] += 1
    }
    
    for i in 0..<want.count{
        dict[want[i], default: 0] = number[i]
    }
    
    func isDiscountable() -> Bool {
        for item in dict {
            let key = item.key
            let value = item.value
            let discountValue = discountDict[key] ?? 0
            if discountValue < value {
                return false
            }
        }
        return true
    }
    
    if isDiscountable() {
        answer += 1
    }
    
    for index in 10..<discount.count {
        let removed = discount[index-10]
        let added = discount[index]
        discountDict[removed] = (discountDict[removed] ?? 0) - 1
        discountDict[added] = (discountDict[added] ?? 0) + 1
        if isDiscountable() {
            answer += 1
        }
    }
    
    return answer
}
