//
//  DetailedPostViewController.swift
//  vknews
//
//  Created by itisioslab on 27.09.2021.
//

import UIKit

class DetailedPostViewController: UIViewController {

    @IBOutlet weak var groupImageView: UIImageView!
    
    @IBOutlet weak var groupNameLabel: UILabel!
    
    @IBOutlet weak var publishTimeLabel: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet weak var image4: UIImageView!
    
    var post: SinglePostCellData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupImageView.image = post?.groupImage
        groupNameLabel.text = post?.groupName
        publishTimeLabel.text = post?.publishingTime
        descriptionTextView.text = post?.description
        image1.image = post?.pinnedPics[0]
        if post?.pinnedPics.count ?? 0 > 1 {
            image2.image = post?.pinnedPics[1]
        }
        if post?.pinnedPics.count ?? 0 > 2 {
            image3.image = post?.pinnedPics[2]
            image4.image = post?.pinnedPics[3]
        }
    }
}
