//Solution 1
let n = Int(readLine()!)!
var cnt = 0, i = 666

while true{
    var num = i
    while num >= 666{
        if num % 1000 == 666{
            cnt += 1
            break
        }
        num /= 10
    }
    if cnt == n{
        print(i)
        break
    }
    i += 1
}


//Solution 2
func hasTripleSix(number: Int) -> Bool {
    var candidateNumber = number
    
    while candidateNumber >= 666 {
        if (candidateNumber - 666) % 1000 == 0 {
            return true
        }
        
        candidateNumber /= 10
    }
    
    return false
}

let N = Int(readLine()!)!
var target = 666
var count = 1

while count != N {
    target += 1
    
    if hasTripleSix(number: target) {
        count += 1
    }
}

print(target)
