//
//  BusinessCell.swift
//  Yelp
//
//  Created by Satyam Jaiswal on 2/14/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ratingImageView: UIImageView!
    
    @IBOutlet weak var reviewsImageView: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    
    var business: Business! {
        didSet{
            if let name = business.name{
                nameLabel.text = name
            }
            
            if let profileImageURL = business.imageURL{
                profileImageView.setImageWithURL(profileImageURL)
            }
            
            if let ratingURL = business.ratingImageURL{
                ratingImageView.setImageWithURL(ratingURL)
            }
            
            if let reviewsCount = business.reviewCount{
                reviewsImageView.text = "\(reviewsCount) Reviews"
            }
            
            if let distance = business.distance {
                distanceLabel.text = distance
            }
            
            if let address = business.address{
                addressLabel.text = address
            }
            
            if let type = business.categories {
                typeLabel.text = type
            }
            
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        profileImageView.layer.cornerRadius = 5
        //nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
