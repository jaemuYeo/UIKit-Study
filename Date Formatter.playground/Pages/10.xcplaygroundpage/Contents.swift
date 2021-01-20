import Foundation

let startDate = Date()
let endDate = startDate.addingTimeInterval(3600 * 24 * 30)

let formatter = DateComponentsFormatter()

formatter.unitsStyle = .full

var comps = DateComponents()
comps.day = 0
comps.hour = 1
comps.minute = 0
comps.second = 7

// 패딩 값에 기본값인 0이 지정 될경우 생략해서 표시
formatter.unitsStyle = .positional
// 지정 된 모든 값이 표시
//formatter.zeroFormattingBehavior = .pad
// 시간과 초만 표시
formatter.zeroFormattingBehavior = .dropAll

if let result = formatter.string(from: comps) {
    print(result)
}
