class TimeMap {

    var storage: [String: [(timestamp: Int, value: String)]] = [:]

    init() {

    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        storage[key, default: []].append((timestamp, value))
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        guard let entries = storage[key] else {
            return ""
        }

        var left = 0
        var right = entries.count - 1
        var answer = -1

        while left <= right {
            let mid = left + (right - left) / 2

            if entries[mid].timestamp <= timestamp {
                answer = mid
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        if answer == -1 {
            return ""
        }

        return entries[answer].value
    }
}
