class Solution {
    func sortArray(_ array: [Int]) -> [Int] {
        mergeSort(array)
    }
    func mergeSort(_ array: [Int]) -> [Int] {
    if array.count <= 1 {
        return array
    }

    let mid = array.count / 2

    let left = Array(array[0..<mid])
    let right = Array(array[mid..<array.count])

    let sortedLeft = mergeSort(left)
    let sortedRight = mergeSort(right)

    return merge(sortedLeft, sortedRight)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var result: [Int] = []
    var i = 0
    var j = 0

    while i < left.count && j < right.count {
        if left[i] < right[j] {
            result.append(left[i])
            i += 1
        } else {
            result.append(right[j])
            j += 1
        }
    }

    while i < left.count {
        result.append(left[i])
        i += 1
    }

    while j < right.count {
        result.append(right[j])
        j += 1
    }

    return result
}
}
