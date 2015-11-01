//
//  ImageScrollCell.swift
//  XDProject
//
//  Created by newtouch on 15/8/5.
//  Copyright (c) 2015年 xidaMM. All rights reserved.
//

import UIKit

class ImageScrollCell: UITableViewCell {
    
    var imageScrollView:ImageScrollView = {
        let imageScrollView = ImageScrollView()
        
        return imageScrollView
    }()
    var imageArr:NSArray = []{
        didSet{
            
        }
    }//图片url
    

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUp()
    }
    //MARK: setUp
    func setUp(){
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        
//    }
}
