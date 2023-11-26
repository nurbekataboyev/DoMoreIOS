//
//  HomeViewController.swift
//  DoMoreIOS
//
//  Created by Nurbek on 22/11/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let numberOfColumns: CGFloat = 2
    var items: Array<Item> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        items.append(Item(title: "Item to Display", image: "receipt"))
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.collectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellWidth = screenSize.width / numberOfColumns - 15
            flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
        
        view.backgroundColor = .white
        
        setNavBar()
    }
    
//    MARK: - Set NavBar
    
    func setNavBar() {
        let img = UIImage(named: "receipt")
        
        navigationItem.title = "Collection View"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(rightTapped))
    }
    
//    MARK: - METHODS
    
    func callScrollViewController() {
        let vc = ScrollViewController(nibName: "ScrollViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
//    MARK: - ACTIONS
    
    @objc func rightTapped() {
        callScrollViewController()
    }
    
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let item = items[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ItemCollectionViewCell
        return cell
    }
    
    
}
