import Foundation
var unsortedList = [String]()
while let line = readLine() {
    unsortedList.append(line.replacingOccurrences(of: "\n", with: "").lowercased())
}


var UInts = unsortedList
func swap(array: inout [String], _ firstIndex: Int, _ secondIndex: Int){
    let temp = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = temp
    
}

func insertionSort(_ UInts: inout [String]) {
    var subSwaps = 0
    var totalSwaps = 0
    
    for i in 1..<UInts.count {
        subSwaps = 0
        var j = i
        while j > 0{
            if UInts[j] < UInts[j - 1] {
                swap(array: &UInts, j - 1, j)
                
                subSwaps += 1
                totalSwaps += 1
            }
            j-=1
        }
    }
    print(UInts)
}

insertionSort(&UInts)
