//
//  ResultViewController.swift
//  RoomPlanNC2
//
//  Created by 이승현 on 6/16/24.
//

import UIKit
//import RealmSwift

class ResultViewController: BaseViewController {
    
    let resultView = ResultView()
//    let repository = ImageTableRepository()
//    var images: Results<ImageTable>?
    
    override func loadView() {
        self.view = resultView
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultView.collectionView.dataSource = self
        resultView.collectionView.delegate = self
        //images = repository.fetch()
        resultView.collectionView.reloadData()
    }
}

extension ResultViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10 //images?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
//        if let imageTable = images?[indexPath.item], let imageData = imageTable.imageData, let image = UIImage(data: imageData) {
//            cell.configureCell(image: image)
//        }
        
        cell.backgroundColor = .purple
        
        return cell
    }
}


