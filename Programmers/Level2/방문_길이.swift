import Foundation

func solution(_ dirs:String) -> Int {
    var visit = Set<String>()
    var x = 0, y = 0
    var nx = 0, ny = 0

    for dir in dirs{
        nx = x
        ny = y
        switch dir{
        case "R":
            nx += 1
        case "L":
            nx -= 1
        case "D":
            ny -= 1
        case "U":
            ny += 1
        default:
            break
        }
        if nx > 5 || nx < -5 || ny > 5 || ny < -5{
            continue
        }

        if !visit.contains("\(nx)\(ny)\(x)\(y)"){
            visit.insert("\(x)\(y)\(nx)\(ny)")
        }
        x = nx
        y = ny
    }

    return visit.count
}
