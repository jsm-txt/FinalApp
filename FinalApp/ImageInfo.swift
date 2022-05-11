//
//  ImageInfo.swift
//  FinalApp
//
//  Created by Jose Salazar Mendez on 5/11/22.
//

import Foundation
import UIKit

class ImageInfo: UIViewController {
    
    @IBOutlet weak var imageInfoView: UIImageView!
    //let myImage = UIImage(named: "pic")
    
    var myImage = UIImage(named: "pic")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageInfoView.image = myImage
    }
    
}
