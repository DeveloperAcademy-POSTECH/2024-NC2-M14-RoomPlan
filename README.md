# RoomPlan Project

## 🎥 Youtube Link
(추후 만들어진 유튜브 링크 추가)

## 💡 About Augmented Reality
증강 현실(Augmented Reality, AR)은 디지털 콘텐츠를 현실 세계에 겹쳐서 보여주는 기술입니다. ARKit는 Apple이 개발한 프레임워크로, iOS 장치에서 AR 경험을 쉽게 구현할 수 있도록 도와줍니다. RoomPlan은 ARKit의 한 기능으로, LiDAR 스캐너를 사용하여 실내 공간을 3D로 스캔하고 모델링할 수 있습니다.

예시:
RoomPlan을 통해 방의 정확한 치수를 측정하고 3D 모델을 생성할 수 있으며, 이는 인테리어 디자인, 부동산, 건축 등 다양한 분야에서 활용될 수 있습니다.

## 🎯 What we focus on?
우리가 집중하는 것은 RoomPlan을 활용하여 실내 공간을 스캔하고, 스캔된 데이터를 기반으로 3D 모델을 생성하는 것입니다. 이를 통해 사용자는 방의 구조와 배치를 시각적으로 확인하고, 다양한 시뮬레이션을 수행할 수 있습니다.

## 💼 Use Case
예시:
RoomPlan을 사용하여 내 친구의 방을 스캔하고, 방의 3D 모델을 생성하여 가구 배치를 시뮬레이션할 수 있습니다. 또한, 스캔된 데이터를 기반으로 방의 구조를 분석하고, 리모델링 계획을 세울 수 있습니다.

## 🖼️ Prototype
(프로토타입과 설명 추가)

## 🛠️ About Code
핵심 코드는 RoomPlan을 사용하여 실내 공간을 스캔하고, 스캔된 데이터를 기반으로 3D 모델을 생성하는 부분입니다. 다음은 주요 코드의 예시입니다:

```swift
import RoomPlan
import UIKit

class RoomController: NSObject, RoomCaptureViewDelegate {
    static var instance = RoomController()
    
    var captureView: RoomCaptureView
    var sessionConfig: RoomCaptureSession.Configuration = RoomCaptureSession.Configuration()
    var finalResult: CapturedRoom?
    
    override init() {
        captureView = RoomCaptureView(frame: .zero)
        super.init()
        captureView.delegate = self
    }
    
    func captureView(shouldPresent roomDataForProcessing: CapturedRoomData, error: Error?) -> Bool {
        return true
    }
    
    func captureView(didPresent processedResult: CapturedRoom, error: Error?) {
       

