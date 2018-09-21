//
//  ShowImageVC - UISetup.swift
//  SnapchatClone
//
//  Created by Max Miranda on 9/20/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import UIKit

extension ShowImageVC {
    func setupImageView() {
        imageView = UIImageView(frame: CGRect (x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        imageView.image = snapImage.image
        view.addSubview(imageView)
    }
    func setupNameLabel() {
        var labelText : String? = nil
        labelText = snapImage.sender
        nameLabel = UILabel(frame: CGRect())
        nameLabel.text = labelText
        nameLabel.backgroundColor = .none
        view.addSubview(nameLabel)
    }
    
    func setupNavigationBar() {
        navigationController?.navigationBar.tintColor = UIColor(r: 0, g: 188, b: 255)
        navigationItem.title = ""
        navigationController?.navigationBar.barTintColor = UIColor(r: 0, g: 188, b: 255)
        navigationItem.setHidesBackButton(true, animated:true);
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(done))
        navigationItem.rightBarButtonItem?.tintColor = .black
    }
}
