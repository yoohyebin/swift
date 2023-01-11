import Foundation

func solution(_ my_string:String) -> String {
    return my_string.lowercased().sorted(by: <).map{String($0)}.joined()
}
