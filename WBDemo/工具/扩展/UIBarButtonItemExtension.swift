//
//  UIBarButtonItemExtension.swift
//  WBDemo
//
//  Created by MainBack on 2019/7/12.
//  Copyright © 2019 MainBack. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    convenience init(imgName:String){
        self.init()
        let btn = UIButton()
        btn.setImage(UIImage(named: imgName), for: .normal)
        btn.sizeToFit()
        self.customView = btn
    }
}
