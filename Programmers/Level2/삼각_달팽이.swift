import Foundation

enum Direction: String {
    case up
    case down
    case straight
}

func solution(_ n: Int) -> [Int] {
    
    var snailArr = [[[Int]]]()
    
    for _ in 0...n {
        let temp = [Int]()
        snailArr.append([temp, temp])
    }
    
    var direction: Direction = .down
    
    var number = 1
    var step = 1
    var count = step
    var side = n
    
    while true {
        if number > n * (n+1) / 2 {
            break
        }
        switch direction {
        case .up:
            if count <= step {
                direction = .down
                step += 2
                count = step
                side -= 1
            }
        case .down:
            if count >= side {
                direction = .straight
                count = step
            }
        case .straight:
            if count >= side {
                direction = .up
                count = side
            }
        }
        
        switch direction {
        case .up:
            snailArr[count][1].insert(number, at: 0)
            number += 1
            count -= 1
        case .down:
            snailArr[count][0].append(number)
            number += 1
            count += 1
        case .straight:
            snailArr[side][0].append(number)
            number += 1
            count += 1
        }
    }
    
    var ret = [Int]()
    
    for i in snailArr {
        for j in i[0] { ret.append(j) }
        for j in i[1] { ret.append(j) }
    }
    
    return ret
}
