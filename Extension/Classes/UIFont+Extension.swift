//
//  UIFont+Extension.swift
//  Scene
//
//  Created by  吴 熠 on 2021/11/3.
//

import Foundation
import UIKit

extension UIFont  {
    
    enum SSFontName: String {
    case Title = ""
    case SubTitle = "q"
    case Content = "w"
    }
    
    
    
    public class func titleFont(size: CGFloat) -> (UIFont) {
        let font = UIFont(name: SSFontName.Title.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
        return font
    }
    
    
    public class func subTitleFont(size: CGFloat) -> (UIFont) {
        let font = UIFont(name: SSFontName.SubTitle.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
        return font
    }
    
    public class func contentFont(size: CGFloat) -> (UIFont) {
        let font = UIFont(name: SSFontName.Content.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
        return font
    }
    
    public class func regularSize(size: CGFloat) -> (UIFont) {
        let font = UIFont(name: "PingFangSC-Regular", size: size)!
        return font
    }
    
    public class func mediumSize(size: CGFloat) -> (UIFont) {
        let font = UIFont(name: "PingFangSC-Medium", size: size)!
        return font
    }
    
    public class func boldSize(size: CGFloat) -> (UIFont) {
        let font = UIFont(name: "PingFangSC-Semibold", size: size)!
        return font
    }
    
    
}
