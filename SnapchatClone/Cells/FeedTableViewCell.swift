//
//  FeedTableViewCell.swift
//  SnapchatClone
//
//  Created by Max Miranda on 9/20/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    var senderLabel: UILabel!
    var dateSentLabel: UILabel!
    var hasBeenOpenedSquare: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        hasBeenOpenedSquare = UIView(frame: CGRect(x: 20, y: 15, width: 30, height: 30))
        hasBeenOpenedSquare.layer.cornerRadius = 5
        contentView.addSubview(hasBeenOpenedSquare)
        
        senderLabel = UILabel(frame: CGRect(x: 80, y: 5, width: contentView.frame.width - 80, height: 30))
        contentView.addSubview(senderLabel)
        
        dateSentLabel = UILabel(frame: CGRect(x: 80, y: 30, width: contentView.frame.width - 80, height: 30))
        dateSentLabel.font = UIFont(name: "hi", size: 10)
        contentView.addSubview(dateSentLabel)
        
    }

}
