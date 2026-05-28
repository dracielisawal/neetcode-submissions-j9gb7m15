import Collections

class MedianFinder {

    var small = Heap<Int>() // max heap via negation trick
    var large = Heap<Int>()

    init() {}

    func addNum(_ num: Int) {

        small.insert(-num)

        large.insert(-small.popMin()!)

        if large.count > small.count {
            small.insert(-large.popMin()!)
        }
    }

    func findMedian() -> Double {

        if small.count > large.count {
            return Double(-small.min!)
        }

        return Double(-small.min! + large.min!) / 2.0
    }
}