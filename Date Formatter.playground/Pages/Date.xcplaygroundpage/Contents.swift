import Foundation

let now = Date()

let formatter = DateFormatter()

formatter.dateStyle = .full
formatter.timeStyle = .full

formatter.locale = Locale(identifier: "ko_KR")

var result = formatter.string(from: now)
print(result)

formatter.string(for: now)

DateFormatter.localizedString(from: now, dateStyle: .full, timeStyle: .short)
