import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var table = Array(repeating: Set<Int>(), count: 200)
    for i in 0..<lines.count{
        for j in lines[i][0]..<lines[i][1]{
            table[j+100].insert(i)
        }
    }
    return table.filter{$0.count > 1}.count
}
