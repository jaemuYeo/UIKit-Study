import Foundation

let now = Date()

let formatter = DateFormatter()
// 문자열의 형식
formatter.dateStyle = .full
formatter.timeStyle = .full
// 한국 locale 설정
formatter.locale = Locale(identifier: "ko_KR")
// string(from:) 메서드를 통한 문자열 출력
var result = formatter.string(from: now)
print(result)

// 파라미터로 전달하는 날짜가 옵셔널 이라면 string(for:) 메서드 사용
formatter.string(for: now)

// class함수를 통한 구현 -> 메서드를 한번에 설정할 수있음, 반복적 사용 불가
DateFormatter.localizedString(from: now, dateStyle: .full, timeStyle: .short)
