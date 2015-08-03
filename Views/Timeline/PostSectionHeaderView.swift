//
//  PostSectionHeaderView.swift
//  Makestagram
//
//  Created by Michelle Chan on 6/29/15.
//  Copyright (c) 2015 Make School. All rights reserved.
//

import UIKit

class PostSectionHeaderView: UITableViewCell {
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    
    var post: Post? {
        didSet {
            if let post = post {
                usernameLabel.text = post.user?.username
                timeLabel.text = post.createdAt?.shortTimeAgoSinceDate(NSDate()) ?? ""
            }
        }
    }

}
