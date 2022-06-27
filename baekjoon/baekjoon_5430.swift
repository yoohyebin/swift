/*
  선영이는 주말에 할 일이 없어서 새로운 언어 AC를 만들었다. AC는 정수 배열에 연산을 하기 위해 만든 언어이다. 이 언어에는 두 가지 함수 R(뒤집기)과 D(버리기)가 있다.
  함수 R은 배열에 있는 수의 순서를 뒤집는 함수이고, D는 첫 번째 수를 버리는 함수이다. 배열이 비어있는데 D를 사용한 경우에는 에러가 발생한다.
  함수는 조합해서 한 번에 사용할 수 있다. 예를 들어, "AB"는 A를 수행한 다음에 바로 이어서 B를 수행하는 함수이다. 예를 들어, "RDD"는 배열을 뒤집은 다음 처음 두 수를 버리는 함수이다.
  배열의 초기값과 수행할 함수가 주어졌을 때, 최종 결과를 구하는 프로그램을 작성하시오.
*/

let t = Int(readLine()!)!

for i in 0..<t{
    var ac = readLine()!.map{String($0)}
    let n = Int(readLine()!)!
    let arr = readLine()!.split{["[", ",", "]"].contains($0)}.map{Int(String($0))!}
    
    var head = 0, tail = n-1
    var isReversed = false
    var isError = false
    
    for j in ac{
        if j == "R"{
            isReversed.toggle()
        }
        else if j == "D"{
            if head > tail{
                isError = true
                break
            }
            if isReversed{
                tail -= 1
            }else{
                head += 1
            }
        }
    }
    
    if isError{ print("error") }
    else if head > tail{ print("[]") }
    else{
        if isReversed{
            print("["+arr[head...tail].reversed().map{String($0)}.joined(separator: ",")+"]")
        }else{
            print("["+arr[head...tail].map{String($0)}.joined(separator: ",")+"]")
        }
    }
}
