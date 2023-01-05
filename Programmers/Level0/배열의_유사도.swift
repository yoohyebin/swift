import Foundation

//solution 1
func solution(_ s1:[String], _ s2:[String]) -> Int {
    return Set(s1).intersection(Set(s2)).count
}

//solution 2
func solution(_ s1:[String], _ s2:[String]) -> Int {
    return s1.filter{s2.contains($0)}.count
}
