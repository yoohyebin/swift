/*
  오늘 동빈이는 여행 가신 부모님을 대신해서 떡집 일을 하기로 했다. 오늘은 떡볶이 떡을 만드는 날이다.
  동빈이네 떡볶이 떡은 재밌게도 떡볶이 떡의 길이가 일정하지 않다. 대신 한 봉지 안에 들어가는 떡의 총 길이는 절단기로 잘라서 맞춘다.
  절단기 높이(H)를 지정하면 줄지어진 떡을 한 번에 절단한다. 높이가 H보다 긴 떡은 H 위의 부분이 잘릴 것이고, 낮은 떡을 잘리지 않는다.
  손님이 왔을 때 요청한 총 길이가 M 일 때, 적어도 M 만큼의 떡을 얻기 위해 절단기에 설정할 수 있는 최대 높이를 구하는 프로그램을 작성하시오.
*/

var input_data = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input_data[0], m = input_data[1]
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var start = 0, end = arr.max()!

var re = 0
while start <= end{
    var total = 0
    var mid = (start+end)/2
    
    for x in arr{
        if x > mid { total += x - mid }
    }
    if total < m { end = mid - 1}
    else{
        re = mid
        start = mid + 1
    }
}
print(re)

