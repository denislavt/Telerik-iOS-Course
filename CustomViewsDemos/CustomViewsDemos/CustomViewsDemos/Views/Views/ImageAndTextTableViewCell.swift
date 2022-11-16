//
//  ImageAndTextTableCellTableViewCell.swift
//  CustomViewsDemos
//
//  Created by Denislav Todorov on 16.11.22.
//

import UIKit

class ImageAndTextTableViewCell: UITableViewCell {
    @IBOutlet weak var theImage: ImageWithLoading!
    @IBOutlet weak var theLabel: UILabel!
    
    
//    override var textLabel: UILabel? {
//        get {
//            return self.theLabel
//        }
//        set(imageView){
//            self.theLabel = textLabel
//        }
//    }
    
    override var textLabel: UILabel? {
        get {
            return self.theLabel
        }
        set(imageView){
            self.theLabel = textLabel
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.theLabel.baselineAdjustment = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.backgroundColor = .black
        self.theLabel.textColor = .yellow
        
        
        // Configure the view for the selected state
    }
    
}
