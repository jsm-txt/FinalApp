//
//  CollectionViewCell.swift
//  FinalApp
//
//  Created by Jose Salazar Mendez on 5/11/22.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mainView: UIView!
    
    static var identifier: String = "gridCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
        
        
        mainView.backgroundColor = .blue
        imageView.translatesAutoresizingMaskIntoConstraints = true
        imageView.contentMode = .scaleAspectFit
        //imageView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.55).isActive = true
    }
    
    func setup() {
        mainView.layer.cornerRadius = 10.0
    }
}
