func solution(_ m:String, _ musicinfos:[String]) -> String {
    var result: [(String, Int)] = []
    let m = m.replacingOccurrences(of: "C#", with: "c")
           .replacingOccurrences(of: "D#", with: "d")
           .replacingOccurrences(of: "F#", with: "f")
           .replacingOccurrences(of: "G#", with: "g")
           .replacingOccurrences(of: "A#", with: "a")
    
    for musicinfo in musicinfos {
        let info = musicinfo.split(separator: ",").map{String($0)}
        let music = info[3].replacingOccurrences(of: "C#", with: "c")
            .replacingOccurrences(of: "D#", with: "d")
            .replacingOccurrences(of: "F#", with: "f")
            .replacingOccurrences(of: "G#", with: "g")
            .replacingOccurrences(of: "A#", with: "a")
            .map{String($0)}
        
        let t = info[0].split(separator: ":").map{Int($0)!} + info[1].split(separator: ":").map{Int($0)!}
        let time = (t[2]-t[0])*60 + (t[3]-t[1])
        
        var fullMusic = ""
        for i in 0..<time{
            fullMusic += music[i%music.count]
        }
        
        if fullMusic.contains(m){
            result.append((info[2], time))
        }
    }
    return result.max{$0.1 < $1.1}?.0 ?? "(None)"
}
