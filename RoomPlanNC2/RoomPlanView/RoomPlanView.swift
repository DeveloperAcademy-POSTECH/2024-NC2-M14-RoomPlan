//
//  RoomPlanView.swift
//  RoomPlanNC2
//
//  Created by 이승현 on 6/16/24.
//

import UIKit
import SnapKit

class RoomPlanView: BaseView {
    
    let roomController = RoomController.instance
    
    lazy var doneScanningButton: UIButton = {
        let button = UIButton()
        button.setTitle("스캔 완료", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        return button
    }()
    
    let resultImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = true // 초기에는 숨김
        return imageView
    }()
    
    let resultDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "설명 설명"
        label.textAlignment = .center
        label.backgroundColor = .lightGray
        label.numberOfLines = 0 // 여러 줄 텍스트 허용
        label.isHidden = true // 초기에는 숨김
        return label
    }()
    
    override func configureView() {
        addSubview(roomController.captureView)
        addSubview(doneScanningButton)
        addSubview(resultImageView)
        addSubview(resultDescriptionLabel)
        roomController.startSession()
    }
    
    override func setConstraints() {
        roomController.captureView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        doneScanningButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(50)
        }
        
        resultImageView.snp.makeConstraints { make in
            make.top.equalTo(roomController.captureView.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.4)
        }
        
        resultDescriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(resultImageView.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
    }
}







