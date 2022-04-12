/*
  배열 array의 i번째 숫자부터 j번째 숫자까지 자르고 정렬했을 때, k번째에 있는 수를 구하는 프로그램을 작성하시오.
*/

import Foundation

//Solution1
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var re = [Int]()
    var a = [Int]()

    for i in 0..<commands.count{
        a = array[(commands[i][0]-1)...(commands[i][1]-1)].sorted()
        re.append(a[(commands[i][2]-1)])
    }

    return re
}

//Solution2
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({array[($0[0]-1)...($0[1]-1)].sorted()[$0[2]-1]})
}
