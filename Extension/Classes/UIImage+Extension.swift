//
//  UIImage+Extension.swift
//  sinaWeibo
//
//  Created by 吴熠 on 16/11/19.
//  Copyright © 2016年 吴熠. All rights reserved.
//

import UIKit


extension UIImage{
    
    /// 更改图片颜色
    public func imageWithTintColor(color : UIColor) -> UIImage{
        UIGraphicsBeginImageContext(self.size)
        color.setFill()
        let bounds = CGRect.init(x: 0, y: 0, width: self.size.width, height: self.size.height)
        UIRectFill(bounds)
        self.draw(in: bounds, blendMode: CGBlendMode.destinationIn, alpha: 1.0)
        
        let tintedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return tintedImage!
    }
}



extension UIImage {
    //类方法
    class func snapShotCurrentWindow()->(UIImage) {
        //截屏方法
        let window = UIApplication.shared.keyWindow!
        //开启图片上下文
        UIGraphicsBeginImageContextWithOptions(window.frame.size, false, 0)
        //将当前的window绘制到图形的上下文
        window.drawHierarchy(in: window.frame, afterScreenUpdates: true)
        //从图片的上下文中获取图片
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //关闭图片的山下文
        UIGraphicsEndImageContext()
        
        return image!
    }
    
    //将图片缩放到指定宽度
    func scaleImage(width:CGFloat) -> UIImage{
        let imageW = self.size.width
        let imageH = self.size.height
        //判断 如果图片的宽度小于缩放的宽度就不需要缩放
        if imageW < imageH {
            return self
        }
        let scaleH = imageH / imageW * width
        let imageBounds = CGRect(x: 0, y: 0, width: width, height: scaleH)
        //开启图片的上下文
        UIGraphicsBeginImageContextWithOptions(imageBounds.size, false, 0)
        //将图片绘制上下文中
        self.draw(in: imageBounds)
        
        //从上下文中获取图片
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //关闭图片的上下文
        UIGraphicsEndImageContext()
        return image!
    }
    
    ///用颜色创建一张图片
       static func creatColorImage(_ color:UIColor,_ size:CGRect = CGRect.init(x: 0, y: 0, width: 1, height: 1)) -> UIImage {
            let rect = size
            UIGraphicsBeginImageContext(rect.size)
            let context = UIGraphicsGetCurrentContext()
            context?.setFillColor(color.cgColor)
            context?.fill(rect)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return image!
        }
    
}
