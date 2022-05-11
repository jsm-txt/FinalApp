//
//  UserInfo.swift
//  FinalApp
//
//  Created by Jose Salazar Mendez on 5/9/22.
//
import Foundation
import UIKit

class UserInfo: UIViewController {

//    var descriptionView: UIView!
  
    
    @IBOutlet weak var textLabel: UILabel!
    var userDesc = "hello world"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = userDesc
        self.title = userDesc
//        self.view.addSubview(descriptionView)
//        NSLayoutConstraint.activate([
//            descriptionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            descriptionView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            descriptionView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
//            descriptionView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor)
//        ])
//        view.backgroundColor = .green
    }
}
