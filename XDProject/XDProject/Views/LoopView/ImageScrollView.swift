//
//  ImageScrollView.swift
//  XDProject
//
//  Created by newtouch on 15/8/5.
//  Copyright (c) 2015年 xidaMM. All rights reserved.
//

import UIKit

protocol ImageScrollViewDelegate{
    func didSelectImageAtIndex(index:NSInteger);
}

class ImageScrollView: UIView {
    
    var myDelegate:ImageScrollViewDelegate?
    let scrollView:UIScrollView?
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    func setup(){
        
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
