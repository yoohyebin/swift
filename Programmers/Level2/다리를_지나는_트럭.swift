import Foundation

func solution(_ bridge_length: Int, _ weight: Int, _ truck_weights: [Int]) -> Int {
    var time: Int = 0
    var bridgeWeight: Int = 0
    var bridge: [Int] = Array(repeating: 0, count: bridge_length)
    var trucks: [Int] = truck_weights
    
  
    while bridgeWeight != 0 || !trucks.isEmpty {
        time += 1 
        bridgeWeight -= bridge.removeFirst() 
        
        if !trucks.isEmpty {
            let nextTruck: Int = trucks.first!
          
            if bridgeWeight + nextTruck <= weight {
                bridgeWeight += nextTruck 
                bridge.append(nextTruck) 
              
                trucks.removeFirst() 
            } else {
                bridge.append(0)
            }
        }
    }
    return time
}
