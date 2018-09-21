
//
//  ShowImageVC.swift
//  SnapchatClone
//
//  Created by Max Miranda on 9/18/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import UIKit

class ShowImageVC: UIViewController {

    var nameLabel: UILabel!
    var snapImage: SnapImage!
    var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
        setupNameLabel()
        setupNavigationBar()
        // Do any additional setup after loading the view.
    }
    
    @objc func done() {
        performSegue(withIdentifier: "toFeedFromShowImage", sender: self)
    }
 

}
