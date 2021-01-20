import Foundation

let now = Date()
let yesterday = now.addingTimeInterval(3600 * -24)
let tomorrow = now.addingTimeInterval(3600 * 24)

let formatter = DateFormatter()
formatter.locale = Locale(identifier: "ko_KR")
formatter.dateStyle = .full
formatter.timeStyle = .none

// 48시간 이내의 날짜를 상대적인 문자열로 바꿔줌
formatter.doesRelativeDateFormatting = true

print(formatter.string(from: now))
print(formatter.string(from: yesterday))
print(formatter.string(from: tomorrow))
