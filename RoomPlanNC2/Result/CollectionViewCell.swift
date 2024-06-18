//
//  CollectionViewCell.swift
//  RoomPlanNC2
//
//  Created by 이승현 on 6/16/24.
//

import Foundation
import UIKit

class CollectionViewCell: BaseCollectionViewCell {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    
    override func configureView() {
        addSubview(imageView)
    }
    
    override func setConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(imageView.snp.width)
        }
    }
    
    func configureCell(image: UIImage) {
        imageView.image = image
    }
    
}
