//
//  UIButton+Extension.swift
//  sinaWeibo
//
//  Created by 吴熠 on 16/11/13.
//  Copyright © 2016年 吴熠. All rights reserved.
//

import UIKit

extension UIButton {
    
    convenience init(title:String,titleColor:UIColor,fontSize:CGFloat) {
        self.init()
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
    }
    
}
