//
//  Task1ViewController.swift
//  DoMoreIOS
//
//  Created by Nurbek on 26/11/23.
//

import UIKit

class Task1ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let numberOfColumns: CGFloat = 2
    var items: Array<Items> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Collection View"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "receipt"), style: .plain, target: self, action: #selector(rightTapped))
        
        items.append(Items(image: "p1", text: "Best Coding"))
        items.append(Items(image: "p2", text: "Amazing Code"))
        items.append(Items(image: "p1", text: "Best Coding"))
        items.append(Items(image: "p2", text: "Amazing Code"))
        items.append(Items(image: "p1", text: "Best Coding"))
        items.append(Items(image: "p2", text: "Amazing Code"))
        items.append(Items(image: "p1", text: "Best Coding"))
        items.append(Items(image: "p2", text: "Amazing Code"))
        items.append(Items(image: "p1", text: "Best Coding"))
        items.append(Items(image: "p2", text: "Amazing Code"))
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.collectionView.register(UINib(nibName: "Task1CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellWidth = screenSize.width / numberOfColumns - 15
            flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
        
    }
    
//    MARK: - ACTIONS
    @objc func rightTapped() {
        let vc = Task2ViewController(nibName: "Task2ViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension Task1ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! Task1CollectionViewCell
        
        cell.imageView.image = UIImage(named: item.image!)
        cell.label.text = item.text
        
        return cell
    }
    
    
}
