func solution(_ n:Int) -> [[Int]] {
    var answer: [[Int]] = []
 
    func move(n: Int, from: Int, to: Int, via: Int){
        if n == 1 {
            answer.append([from,to])
        }else {
            move(n: n-1,from: from, to: via, via: to)
            answer.append([from,to])
            move(n: n-1, from: via, to: to, via: from)
        }
    }
    
    move(n: n, from: 1, to: 3, via: 2)
    return answer
}
