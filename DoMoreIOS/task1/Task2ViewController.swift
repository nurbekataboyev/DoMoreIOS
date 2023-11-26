//
//  Task2ViewController.swift
//  DoMoreIOS
//
//  Created by Nurbek on 26/11/23.
//

import UIKit

class Task2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Scroll View"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "back"), style: .plain, target: self, action: #selector(leftTapped))
    }

    // MARK: - ACTIONS
    
    @objc func leftTapped() {
        self.navigationController?.popViewController(animated: true)
    }

}
