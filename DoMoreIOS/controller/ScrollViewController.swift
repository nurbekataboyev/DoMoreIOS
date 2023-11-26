//
//  ScrollViewController.swift
//  DoMoreIOS
//
//  Created by Nurbek on 22/11/23.
//

import UIKit

class ScrollViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setNavBar()
    }
    
    // MARK: - Navigation
    
    func setNavBar() {
        let img = UIImage(named: "back")
        
        navigationItem.title = "Scroll View"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(backTapped))
    }
    
//    MARK: - ACTIONS
    
    @objc func backTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
}
