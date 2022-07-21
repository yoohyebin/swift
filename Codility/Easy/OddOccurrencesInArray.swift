// 66% timeout
public func solution(_ A : inout [Int]) -> Int {
    if A.count == 1{
        return A[0]
    }
    var temp = 0

    while true{
        temp = A.removeFirst()
        if A.contains(temp){
            A.remove(at: A.firstIndex(of: temp)!)
        }else{
            break
        }
    }
    return temp
}

/*
  비트연산자 중 XOR 연산자를 사용
  XOR 연산은 이진수 두개를 연산해서 각 자리의 값이 같으면 0, 다르면 1을 반환
  짝을 이룬다는 것은 값이 같다는 것
  값이 같은 경우에는 XOR 연산에서 0으로 무시되기 때문에 짝을 이루지 않는 원소만 남음
*/

public func solution(_ A : inout [Int]) -> Int {
    var temp = 0
    
    for item in A {
        temp ^= item
    }
    
    return temp
}
