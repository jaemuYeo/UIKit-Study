import Foundation

// DateComponentsFormatter - 날짜와 시간사이의 간격을 문자열로 바꿀 때 사용

let startDate = Date()
let endDate = startDate.addingTimeInterval(3600 * 24 * 30)

let formatter = DateComponentsFormatter()

// 출력형식 지정
formatter.unitsStyle = .full

//if let result = formatter.string(from: startDate, to: endDate) {
//    print(result)
//}

var comps = DateComponents()
comps.hour = 1
comps.minute = 30

// 사용할 유닛을 설정하면 출력되는 값을 바꿀 수 있다.
//formatter.allowedUnits = [.minute]

// 문자열에 포함하는 유닛 숫자를 제한 ( 가장 작은값의 유닛은 생략되고 반올림 된다 )
//formatter.maximumUnitCount = 1

// 네비게이션 같은 앱에서 도착 예정시간을 쉽게 구성할 수있다!! 영어로 표시됨,,
//formatter.includesTimeRemainingPhrase = true
//formatter.includesApproximationPhrase = true


if let result = formatter.string(from: comps) {
    print(result)
}
