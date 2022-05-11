//
//  CollectionViewController.swift
//  FinalApp
//
//  Created by Jose Salazar Mendez on 4/29/22.
//

import UIKit

class CollectionViewController: UIViewController {
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    let imageList = [
        UIImage(named: "tab-box")!,
        UIImage(named: "tab-history")!,
        UIImage(named: "robot1")!,
        UIImage(named: "robot2")!,
        UIImage(named: "robot3")!,
        UIImage(named: "robot4")!,
        
        
    ]
    let myImage = UIImage(named: "pic")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
}

extension CollectionViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "gridCell", for: indexPath) as! CollectionViewCell
        let item = imageList[indexPath.row]
        cell.imageView.image = item
        return cell
    }
}
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 50, height: 50)
//    }
//
}
extension CollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "imageInfo") as! ImageInfo
        navigationController?.pushViewController(vc, animated: true)
        vc.myImage = imageList[indexPath.row]
            
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
}
