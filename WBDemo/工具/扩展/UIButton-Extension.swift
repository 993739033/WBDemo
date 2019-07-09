//
//  UIButton-Extension.swift
//  WBDemo
//
//  Created by MainBack on 2019/7/9.
//  Copyright © 2019 MainBack. All rights reserved.
//

import UIKit
//Mark:- 扩展UIButton类方法及类构造方法
extension UIButton{
    class func getUIButton(bgName:String,bgLighterName:String)->UIButton{
        let btn = UIButton()
        btn.setBackgroundImage(UIImage(named: bgName), for: .normal)
        btn.setBackgroundImage(UIImage(named: bgLighterName), for: .highlighted)
        return btn
    }
    
    convenience init(bgName:String,bgLighterName:String){
        self.init()
        setBackgroundImage(UIImage(named: bgName), for: .normal)
        setBackgroundImage(UIImage(named: bgLighterName), for: .highlighted)
        sizeToFit()
    }
}


