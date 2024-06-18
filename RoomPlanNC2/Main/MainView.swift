//
//  MainView.swift
//  RoomPlanNC2
//
//  Created by 이승현 on 6/16/24.
//

import Foundation
import UIKit
import SnapKit

class MainView: BaseView {
    
    
    lazy var startButton: UIButton = {
        let button = UIButton()
        button.setTitle("정보 추가하기", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func configureView() {
        addSubview(startButton)
        
    }

    
    override func setConstraints() {
        startButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
    
    
}
