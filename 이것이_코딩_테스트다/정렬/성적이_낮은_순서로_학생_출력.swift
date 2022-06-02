/*
  N명의 학생 정보가 있다. 학생 정보는 학생의 이름과 학생의 성적으로 구분된다. 
  각 학생의 이름과 성적 정보가 주어졌을 때 성적이 낮은 순서대로 학생의 이름을 출력하는 프로그램을 작성하시오.
*/

var n = Int(readLine()!)!
var arr = [(String,Int)]()

for _ in 0..<n{
    let input_data = readLine()!.split(separator: " ").map{String($0)}
    arr.append((input_data[0],Int(input_data[1])!))
}

print(arr.sorted(by: { first, second in first.1 < second.1}).map{$0.0})
