//
//  FeedVC - UISetup.swift
//  SnapchatClone
//
//  Created by Max Miranda on 9/18/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import UIKit

extension FeedVC {
    
    func setupCountLabel() {
        countLabel = UILabel(frame: CGRect(x: 100, y: 200, width: view.frame.width, height: 100))
        countLabel.text = "You have \(arrayOfSnaps.count) incoming Snaps"
        countLabel.adjustsFontSizeToFitWidth = true
        view.addSubview(countLabel)
    }
    
    func setupNavigationBar() {
        navigationController?.navigationBar.tintColor = UIColor(r: 0, g: 188, b: 255)
    
        navigationItem.title = "My Snaps"
        navigationController?.navigationBar.barTintColor = UIColor(r: 0, g: 188, b: 255)
        navigationItem.setHidesBackButton(true, animated:true);
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Log Out", style: .plain, target: self, action: #selector(logOut))
        navigationItem.leftBarButtonItem?.tintColor = .black
    }
    
}
