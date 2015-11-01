//
//  XDPublicFile.swift
//  XDProject
// 
//  Created by newtouch on 15/8/4.
//  Copyright (c) 2015年 xidaMM. All rights reserved.
//

import Foundation
import UIKit

// 1.判断是否为iOS7
let iOS7 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 7.0
let IOS8 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue >= 8.0
let IOS_VERSION = (UIDevice.currentDevice().systemVersion as NSString).doubleValue

// 2.获得RGB颜色
func RGBA (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat)->UIColor{
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}
func RGB(r:CGFloat, g:CGFloat, b:CGFloat)->UIColor{
    return RGBA(r, g, b, 1.0)
}
//首页导航的颜色
let navigationBarColor = RGB(67, 199, 176)
let separaterColor =  RGB(200, 199, 204)
let selectColor =  RGB(46, 158, 138)


// 3.是否为4inch
let fourInch = (UIScreen.mainScreen().bounds.size.height == 568)

// 4.屏幕大小尺寸
let screen_width = UIScreen.mainScreen().bounds.size.width
let screen_height = UIScreen.mainScreen().bounds.size.height

//重新设定view的Y值
func setFrameY(view:UIView,newY:CGFloat){
    view.frame = CGRectMake(view.frame.origin.x, newY, view.frame.size.width, view.frame.size.height)
}
func setFrameX(view:UIView,newX:CGFloat){
    view.frame = CGRectMake(newX, view.frame.origin.y, view.frame.size.width, view.frame.size.height)
}
func setFrameH(view:UIView,newH:CGFloat){
    view.frame = CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, newH)
}


//取view的坐标及长宽
func W(view:UIView)->CGFloat{
    return view.frame.size.width
}
func H(view:UIView)->CGFloat{
    return view.frame.size.height
}
func X(view:UIView)->CGFloat{
    return view.frame.origin.x
}
func Y(view:UIView)->CGFloat{
    return view.frame.origin.y
}

//5.常用对象
func APPDELEGATE()->UIApplicationDelegate{
   return UIApplication.sharedApplication().delegate!
}

//6.经纬度
let LATITUDE_DEFAULT=39.983497
let LONGITUDE_DEFAULT = 116.318042


