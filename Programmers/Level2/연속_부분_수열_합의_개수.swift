import Foundation

func solution(_ elements:[Int]) -> Int {
    var set_number = Set<Int>()
    let n = elements.count
    
    for i in 0..<n-1{
        for j in 0..<n{
            var sum = 0
            for k in j...j+i{
                if k >= n{
                    sum += elements[k-n]
                }else{
                    sum += elements[k]
                }
            }
            set_number.insert(sum)
        }
    }
    set_number.insert(elements.reduce(0, +))
    
    return set_number.count
}
