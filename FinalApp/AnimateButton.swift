//
//  AnimateButton.swift
//  FinalApp
//
//  Created by Jose Salazar Mendez on 5/2/22.
//

import Foundation
import UIKit

class AnimateButton: UIViewController {
    
//    @IBOutlet weak var ActionButton: UIButton!
    var titleConstraintStart: NSLayoutConstraint!
    var titleConstraintEnd: NSLayoutConstraint!
    
    let topView : UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.orange
            return view
        }()

        let bottomView : UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.purple
            return view
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomView.frame = CGRect(x: self.view.frame.size.width/2-25, y: self.view.frame.size.height/2, width: 50, height: 50)
        self.view.addSubview(bottomView)

        topView.frame = CGRect(x: self.view.frame.size.width/2-25, y: -50, width: 50, height: 50)
        self.view.addSubview(topView)
        
        UIView.animate(withDuration: 1.5, delay: 0.5, options: [.curveEaseIn, .repeat], animations: {
                self.topView.center.y += 200
            },completion: nil)
            UIView.animate(withDuration: 1.5, delay: 0.5, options: [.curveEaseOut], animations: {
                self.bottomView.center.y -= 200
            },completion: nil)
    }
    
}
