//내 제출, 시간 초과
var queue = [Int]()
var firstIndex = 0

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map{String($0)}
    
    switch input[0] {
    case "push":
        queue.append(Int(input[1])!)
    case "pop":
        if queue.count-firstIndex == 0{
            print(-1)
        }else{
            print(queue[firstIndex])
            firstIndex += 1
        }
    case "size":
        print(queue.count - firstIndex)
    case "empty":
        print(queue.count-firstIndex == 0 ? 1 : 0)
    case "front":
        print(queue.count-firstIndex == 0 ? -1 : queue[firstIndex])
    case "back":
        print(queue.count-firstIndex == 0 ? -1 : queue.last!)
    default:
        break
    }
}

//정답, 400ms, 라이노님 빠른 입력 FileIO 
import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
            || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> Int {
        var str = 0
        var now = read()

        while now == 10
            || now == 32 { now = read() } // 공백과 줄바꿈 무시

        while now != 10
            && now != 32 && now != 0 {
                str += Int(now)
                now = read()
        }
        
        return str
    }
}

func stringToAscii(_ str: String) -> Int {
    str.map { $0.asciiValue! }.map { Int($0) }.reduce(0) {$0 + $1}
}

let FRONT = stringToAscii("front")
let EMPTY = stringToAscii("empty")
let BACK = stringToAscii("back")
let SIZE = stringToAscii("size")
let POP = stringToAscii("pop")

struct Queue {
    private var nums = [Int]()
    private var start = 0
    private var end = 0
    
    var empty: Bool{
        start == end
    }
    var size: Int {
        end - start
    }
    mutating func pop() -> Int {
        if empty {
            return -1
        }
        let num = nums[start]
        start += 1
        return num
    }
    var front: Int {
        if empty {
            return -1
        }
        return nums[start]
    }
    var back: Int {
        if empty {
            return -1
        }
        return nums[end-1]
    }
    mutating func push(_ num: Int) {
        nums.append(num)
        end += 1
    }
}

func main() {
    let file = FileIO()
    let numCommands = file.readInt()
    
    var queue = Queue()
    var output = ""
    
    for _ in 1...numCommands {
        let line = file.readString()
        
        
        if line == FRONT {
            output += "\(queue.front)\n"
        } else if line == EMPTY {
            output += queue.empty ? "1\n" : "0\n"
            
        } else if line == BACK {
            output += "\(queue.back)\n"
            
        } else if line == SIZE {
            output += "\(queue.size)\n"
            
        } else if line == POP {
            output += "\(queue.pop())\n"
        } else {
            let value = file.readInt()
            queue.push( value)
        }
    }
    print(output)
}

main()
