import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var answer = 0

    for skill_tree in skill_trees {
        let skills = skill_tree.filter{skill.contains($0)}.map{String($0)}.joined()

        if skill.hasPrefix(skills){
            answer += 1
        }
    }

    return answer
}
