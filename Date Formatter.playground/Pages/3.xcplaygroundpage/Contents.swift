import Foundation

// 포멧을 직접 지정해보기.
let now = Date()
let formatter = DateFormatter()

formatter.locale = Locale(identifier: "en_US")
formatter.setLocalizedDateFormatFromTemplate("yyyyMMMMdE")
var result = formatter.string(from: now)
print(result)
print(formatter.dateFormat)

formatter.locale = Locale(identifier: "ko_KR")
formatter.setLocalizedDateFormatFromTemplate("yyyyMMMMdE")
result = formatter.string(from: now)
print(result)
print(formatter.dateFormat)

// 포멧 문자로 지정한 포멧과 순서가 그대로 반영된 문자열
// Locale에 관계없이 고정된 포멧이 필요할 때 사용
formatter.dateFormat = "yyyyMMMMde"
result = formatter.string(from: now)
print(result)

// 포멧 문자열을 통해서 지역화 된 문자열을 얻을 때에 사용하는 메서드
// Locale을 바꾼다 해서 포멧 문자열이 자동적으로 업데이트 되지 않음
// 실제 사용되는 포멧 문자열은 date format 속성을 통해 확인
