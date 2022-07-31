import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var dic = [String: [Int]]()
    var count_genres = [String: Int]()
    var re = [Int]()
    
    for i in 0..<genres.count{
        dic[genres[i], default: []].append(i)
        count_genres[genres[i], default: 0] += plays[i]
    }
    
    let bestGenre: [String] = Array(count_genres.keys).sorted{count_genres[$0]! > count_genres[$1]!}
    
    for genre in bestGenre {
        let indexs = dic[genre]!.sorted{
            plays[$0] > plays[$1]
        }
        
        re.append(indexs[0])
        if indexs.count > 1{
            re.append(indexs[1])
        }
    }
    
    return re
}
