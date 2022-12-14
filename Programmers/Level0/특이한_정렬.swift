import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted(by: >).sorted(by: {
        abs(n-$0) < abs(n-$1)
    })
}
