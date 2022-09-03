func insertionSort(_ array: [Int]) -> [Int] {
    var sortedArray = array          // 1
    for index in 1..<sortedArray.count {         // 2
        var currentIndex = index
        while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] { // 3
            sortedArray.swapAt(currentIndex - 1, currentIndex)
            currentIndex -= 1
        }
    }
    return sortedArray
}
let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26]
print(insertionSort(list))
