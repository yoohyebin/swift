var _ = Int(readLine()!)!
var array = readLine()!.split(separator: " ").map{Int(String($0))!}
var count = 0

for i in array{
    if i != 1{
        for j in 2...i{
            if i%j == 0{
                if i==j{
                    count += 1
                }
                break
            }
        }
    }
}
print(count)

//n개의 소수 구하기
var n = Int(readLine()!)!
var i = 2

while n>0{
    for j in 2...i{
        if i%j == 0{
            if i==j{
                print(i)
                n -= 1
            }
            break
        }
    }
    i += 1
}
