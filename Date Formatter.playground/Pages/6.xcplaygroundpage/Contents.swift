import Foundation

// ISO8601Date - ios에서 날짜를 파싱할 때 사용

let str = "2021-01-16T01:00:00Z"

let formatter = ISO8601DateFormatter()

if let date = formatter.date(from: str) {
    print(formatter.string(from: date))
} else {
    print("invalid format")
}
// 웹서버에서 주로 사용하는 문자열은 바로 사용 가능


