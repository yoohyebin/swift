let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var N = input[0], K = input[1]
var max = Int(1e5) + 1 // 1000001 로 쓰는 것보다 빠름 40ms -> 12ms

if N == K {print("0")}
else{
    var queue: [(Int, Int)] = [(N, 0)]
    var visited: [Bool] = Array(repeating: false, count: max)
    var index = 0
    
    while queue.count > index{
        let num = queue[index].0, depth = queue[index].1
        index += 1
        
        if num == K{
            print(depth)
            break
        }
        
        if num + 1 < max && visited[num+1] == false{
            queue.append((num+1, depth+1))
            visited[num+1] = true
        }
        if 0 <= num-1 && visited[num-1] == false{
            queue.append((num-1, depth+1))
            visited[num-1] = true
        }
        if num*2 < max && visited[num*2] == false{
            queue.append((num*2, depth+1))
            visited[num*2] = true
        }
    }
}
