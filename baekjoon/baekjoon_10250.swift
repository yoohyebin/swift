/*
백준 10250 "ACM 호텔"

각 층에 W 개의 방이 있는 H 층 호텔에서 호텔 정문에 가까운 방을 배정 하는 문제
*/
for i in 0..<Int(readLine()!)!{
    var hotel = readLine()!.split(separator: " ").map{Int(String($0))!}
    var room = 1, floor = 1

    if hotel[2] % hotel[0] == 0 {
        room = hotel[2]/hotel[0]
        floor = hotel[0]
    }
    else {
        room = hotel[2]/hotel[0]+1
        floor = hotel[2]%hotel[0]
    }
    (room < 10) ? print("\(floor)0\(room)") : print("\(floor)\(room)")
}
