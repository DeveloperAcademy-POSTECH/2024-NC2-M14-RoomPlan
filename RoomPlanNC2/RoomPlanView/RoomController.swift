//
//  RoomController.swift
//  RoomPlanNC2
//
//  Created by 이승현 on 6/16/24.
//

import RoomPlan
import UIKit
// import RealmSwift
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
        finalResult = processedResult
    }
    
    func startSession() {
        captureView.captureSession.run(configuration: sessionConfig)
    }
    
    func stopSession() {
        captureView.captureSession.stop()
    }
    
//    func saveFinalResultToRealm() {
//        guard let finalResult = finalResult else { return }
//
//        // 이미지 데이터와 설명 생성 (실제 구현에 맞게 조정 필요)
//        let imageData = UIImage(named: "result_image_placeholder")?.jpegData(compressionQuality: 1.0)
//        let descriptionText = "스캔된 방의 설명을 여기에 작성합니다."
//
//        let newImageTable = ImageTable()
//        newImageTable.imageData = imageData
//        newImageTable.descriptionText = descriptionText
//
//        let realm = try! Realm()
//        try! realm.write {
//            realm.add(newImageTable)
//        }
//    }
    
    
    func encode(with coder: NSCoder) {
        fatalError("Not Needed")
    }
    
    required init?(coder: NSCoder) {
        fatalError("Not Needed")
    }
    
    
}


