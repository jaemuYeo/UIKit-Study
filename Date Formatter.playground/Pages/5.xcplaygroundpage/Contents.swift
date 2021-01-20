import Foundation

let str = "2021-01-15T09:30:00Z"
let formatter = DateFormatter()

formatter.dateFormat = "yyyy-MM-DD'T'HH:mm:ss'Z'"

if let date = formatter.date(from: str) {
    formatter.dateStyle = .full
    formatter.timeStyle = .full
    print(formatter.string(from: date))
} else {
    print("invalid format")
}

// dateFormat 문자열을 정확히 처리해야 함.
