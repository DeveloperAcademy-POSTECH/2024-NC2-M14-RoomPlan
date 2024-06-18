//
//  ResultView.swift
//  RoomPlanNC2
//
//  Created by 이승현 on 6/16/24.
//

import Foundation
import UIKit
import SnapKit

class ResultView: BaseView {
    
    lazy var collectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout())
        view.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        view.collectionViewLayout = collectionViewLayout()
        view.backgroundColor = UIColor(named: "White")//UIColor(cgColor: .init(red: 0.05, green: 0.05, blue: 0.05, alpha: 1))
        return view
    }()
    
    override func configureView() {
        addSubview(collectionView)
    }
    
    override func setConstraints() {
        collectionView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
        }
    }
    
    private func collectionViewLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        
        let padding: CGFloat = 10
        let itemsPerRow: CGFloat = 3
        let itemSpacing: CGFloat = 12
        let totalSpacing: CGFloat = (itemsPerRow - 1) * itemSpacing + padding * 2
        let itemWidth = (UIScreen.main.bounds.width - totalSpacing) / itemsPerRow
        
    
        let additionalHeightForCosmosView: CGFloat = 30
        let itemHeight = itemWidth * 1.4 + additionalHeightForCosmosView
        layout.itemSize = CGSize(width: itemWidth, height: itemHeight)


        layout.minimumInteritemSpacing = itemSpacing

        layout.sectionInset = UIEdgeInsets(top: 1, left: padding, bottom: 0, right: padding)
        
        return layout
    }
    
}
