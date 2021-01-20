import Foundation

// 두 날짜의 범위를 출력해보기 Date Interval
let startDate = Date()
let endDate = startDate.addingTimeInterval(3600 * 24 * 30)

let formatter = DateFormatter()
formatter.locale = Locale(identifier: "ko_KR")
formatter.dateStyle = .long
formatter.timeStyle = .short

print("\(formatter.string(from: startDate)) - \(formatter.string(from: endDate))")

// 동일한 속성으로 설정

let intervalFormatter = DateIntervalFormatter()
intervalFormatter.locale = Locale(identifier: "ko_KR")
//intervalFormatter.dateStyle = .long
//intervalFormatter.timeStyle = .short

// 종료 날짜에서 중복되는 부분을 제거
intervalFormatter.dateTemplate = "yyyyMMMdE"

let result = intervalFormatter.string(from: startDate, to: endDate)
print(result)
