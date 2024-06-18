//
//  RoomPlanViewController.swift
//  RoomPlanNC2
//
//  Created by 이승현 on 6/16/24.
//

import UIKit

class RoomPlanViewController: BaseViewController {
    
    let roomPlanView = RoomPlanView()
    let roomController = RoomController.instance
    
    override func loadView() {
        self.view = roomPlanView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roomPlanView.doneScanningButton.addTarget(self, action: #selector(doneScanningButtonTapped), for: .touchUpInside)
    }
    
    @objc func doneScanningButtonTapped() {
        roomController.stopSession()
        roomPlanView.doneScanningButton.setTitle("스캔 완료됨", for: .normal)
        roomPlanView.doneScanningButton.isEnabled = false
        roomPlanView.doneScanningButton.backgroundColor = .lightGray
        
        // 결과 이미지와 설명을 업데이트
        if let finalResult = roomController.finalResult {
            roomPlanView.resultImageView.isHidden = false
            roomPlanView.resultDescriptionLabel.isHidden = false
            roomPlanView.resultDescriptionLabel.text = "스캔된 방의 설명을 여기에 작성합니다."
            
            // 결과 이미지 업데이트 (예시로 placeholder 이미지 사용)
            roomPlanView.resultImageView.image = UIImage(named: "result_image_placeholder")
            
            roomController.captureView.snp.remakeConstraints { make in
                make.top.leading.trailing.equalToSuperview()
                make.height.equalToSuperview().multipliedBy(0.4)
            }
            
            UIView.animate(withDuration: 0.3) {
                self.roomPlanView.layoutIfNeeded()
            }
            
            // Realm에 저장 (주석 해제하여 사용)
            // roomController.saveFinalResultToRealm()
            
            // ResultViewController로 이동 (주석 처리하여 나중에 사용)
            // let resultVC = ResultViewController()
            // resultVC.modalPresentationStyle = .fullScreen
            // present(resultVC, animated: true, completion: nil)
        }
    }
}







