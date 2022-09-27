import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var dict = [String: [String]]()
    var answer = [String: Int]()
    
    for record in records{
        let r = record.split(separator: " ").map{String($0)}
        if dict[r[1]] == nil{
            dict[r[1]] = [r[0]]
        }else{
            dict[r[1]]!.append(r[0])
        }
    }
    
    for d in dict{
        var value = d.value
        var t: Int = 0
        
        if value.count%2 != 0{
            value.append("23:59")
        }
        
        for i in stride(from: 0, to: value.count, by: 2){
            var time = value[i].split(separator: ":").map{Int(String($0))!}
            let h1 = time[0], m1 = time[1]
            
            time = value[i+1].split(separator: ":").map{Int(String($0))!}
            let h2 = time[0], m2 = time[1]
            
            t += ((h2*60) + m2) - ((h1*60) + m1)
        }
        if t <= fees[0]{
            answer[d.key] = fees[1]
        }else{
            let a = Int(ceil((Double)(t-fees[0]) / (Double)(fees[2])))
            answer[d.key] = fees[1] + a * fees[3]
        }
    }
    
    return answer.sorted(by: {$0.key < $1.key}).map{Int($0.value)}
}
