import Foundation

//Solution 1
func solution(_ sizes:[[Int]]) -> Int {
    var width = 0
    var height = 0
    for i in sizes{
        if i[0] < i[1]{
            width = max(width, i[0])
            height = max(height, i[1])
        }
        else {
            width = max(width, i[1])
            height = max(height, i[0])
        }
    }
   
    return width*height
}

//Solution 2
func solution(_ sizes:[[Int]]) -> Int {
    var maxNum = 0
    var minNum = 0

    for size in sizes {
        maxNum = max(maxNum, size.max()!)
        minNum = max(minNum, size.min()!)
    }
    return maxNum * minNum
}
