//
//  Extension.swift
//  sinaWeibo
//
//  Created by 吴熠 on 16/11/12.
//  Copyright © 2016年 吴熠. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    public convenience init(title:String="",imageName:String? = nil,target:Any?,action:Selector?) {
        let btn = UIButton()
        btn.setTitle(title, for: .normal)
        //文字颜色
        btn.setTitleColor(UIColor.darkGray, for: .normal)
        btn.setTitleColor(UIColor.orange, for: .highlighted)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        if let img = imageName{
            btn.setImage( UIImage(named: img), for: .normal)
            btn.setImage(UIImage(named:img + "_highlighted") , for: .highlighted)

        }
        
        //监听按钮的点击事件
        if let ac = action{
            btn.addTarget(target, action: ac, for: .touchUpInside)
        }
        btn.sizeToFit()
        
       self.init()
        self.customView = btn
    }
}
