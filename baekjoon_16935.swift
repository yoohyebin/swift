let input_data =  readLine()!.split(separator: " ").map{Int(String($0))!}
var N = input_data[0], M = input_data[1], R = input_data[2]
var arr = [[Int]]()

for _ in 0..<N{
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var num = readLine()!.split(separator: " ").map{Int(String($0))!}
for i in num{
    switch i{
    case 1:
        arr = arr.reversed()
    case 2:
        for i in 0..<N{
            for j in 0..<M/2{
                arr[i].swapAt(j, M-j-1)
            }
        }
    case 3:
        var new_arr = Array(repeating: [Int](), count: M)
        for i in 0..<M{
            for j in 0..<N{
                new_arr[i].append(arr[N-j-1][i])
            }
        }
        arr = new_arr
        swap(&N, &M)
    case 4:
        var new_arr = Array(repeating: [Int](), count: M)
        for i in 0..<M{
            for j in 0..<N{
                new_arr[i].append(arr[j][M-i-1])
            }
        }
        arr = new_arr
        swap(&N, &M)
    case 5:
        var new_arr = arr
        //1->2
        for i in 0..<N/2{
            for j in 0..<M/2{
                new_arr[i][M/2+j] = arr[i][j]
            }
        }
        //2->3
        for i in 0..<N/2{
            for j in M/2..<M{
                new_arr[N/2+i][j] = arr[i][j]
            }
        }
        
        //3->4
        for i in N/2..<N{
            for j in M/2..<M{
                new_arr[i][j-M/2] = arr[i][j]
            }
        }
        
        //4->1
        for i in N/2..<N{
            for j in 0..<M/2{
                new_arr[i-N/2][j] = arr[i][j]
            }
        }
        arr = new_arr
    case 6:
        var new_arr = arr
        //1->4
        for i in 0..<N/2{
            for j in 0..<M/2{
                new_arr[N/2+i][j] = arr[i][j]
            }
        }
        
        //4->3
        for i in N/2..<N{
            for j in 0..<M/2{
                new_arr[i][j+M/2] = arr[i][j]
            }
        }
        
        
        //3->2
        for i in N/2..<N{
            for j in M/2..<M{
                new_arr[i-N/2][j] = arr[i][j]
            }
        }
        
        //2->1
        for i in 0..<N/2{
            for j in M/2..<M{
                new_arr[i][j-M/2] = arr[i][j]
            }
        }
        arr = new_arr
    default:
        break
    }
}

for i in arr{
    print(i.map{String($0)}.joined(separator: " "))
}
