//
//  UILable+Extension.swift
//  sinaWeibo
//
//  Created by 吴熠 on 16/11/13.
//  Copyright © 2016年 吴熠. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience init(title: String,fontSize: CGFloat,textColor: UIColor) {
        
        self.init()
        
        self.text = title
        self.font = UIFont(name: "PingFangSC-Regular", size: fontSize)
        self.textColor = textColor
    }
    
    /*
     font:'%@' PingFangSC-Regular
     font:'%@' PingFangSC-Ultralight
     font:'%@' PingFangSC-Thin
 '%@' PingFangSC-Light
     font:'%@' PingFangSC-Medium
     font:'%@' PingFangSC-Semibold
     
     */
    
    
    convenience init(title: String,mediumFontSize: CGFloat,textColor: UIColor) {
        self.init()
        
        self.text = title
        self.font = UIFont(name: "PingFangSC-Medium", size: mediumFontSize)
        self.textColor = textColor
    }
    
    convenience init(title: String,boldFontSize: CGFloat,textColor: UIColor) {
        self.init()
        
        self.text = title
        self.font = UIFont(name: "PingFangSC-Semibold", size: boldFontSize)
        self.textColor = textColor
    }
    
    
    
}
