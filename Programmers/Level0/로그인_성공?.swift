import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    var dic = [String: String]()
    for i in db{
        dic[i[0]] = i[1]
    }
    return dic[id_pw[0]] != nil ? (dic[id_pw[0]]! == id_pw[1] ? "login" : "wrong pw") : "fail"
}
