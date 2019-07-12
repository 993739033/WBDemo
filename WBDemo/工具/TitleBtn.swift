//
//  TitleBtn.swift
//  WBDemo
//
//  Created by MainBack on 2019/7/12.
//  Copyright © 2019 MainBack. All rights reserved.
//

import UIKit

class TitleBtn: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setImage(UIImage(named: "arrow_down"), for: .normal)
        setImage(UIImage(named: "arrow_up"), for: .selected)
        setTitle("新鲜事", for: .normal)
        setTitleColor(UIColor.black, for: .normal)
        sizeToFit()
  
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel!.frame.origin.x = 0
        imageView!.frame.origin.x = titleLabel!.bounds.width + 5
        
    }
    
}
