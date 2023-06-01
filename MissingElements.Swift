func findMissingElements(array1: [Int], array2: [Int]) -> [Int] {
    var array1Dict = [Int: Int]()
    var missingElements = [Int]()
    
    for element in array1 {
        if let count = array1Dict[element] {
            array1Dict[element] = count + 1
        } else {
            array1Dict[element] = 1
        }
    }
    
    for element in array2 {
        if let count = array1Dict[element], count > 0 {
            array1Dict[element] = count - 1
        } else {
            missingElements.append(element)
        }
    }
    
    return missingElements
}

let array1 = [8, 8, 7, 2, 1, 7, 9]
let array2 = [14, 8, 2, 7, 7]
let missing = findMissingElements(array1: array1, array2: array2)
print(missing) 
