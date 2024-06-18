//
//  ViewController.swift
//  RoomPlanNC2
//
//  Created by 이승현 on 6/16/24.
//

import UIKit

class MainViewController: BaseViewController {
    
    let mainView = MainView()
    
    override func loadView() {
        self.view = mainView
        view.backgroundColor = .white
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func configureView() {
        mainView.startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
    }
    
    @objc func startButtonTapped() {
        let vc = RoomPlanViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }


}

