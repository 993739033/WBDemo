//
//  VisitorView.swift
//  WBDemo
//
//  Created by MainBack on 2019/7/11.
//  Copyright © 2019 MainBack. All rights reserved.
//

import UIKit

class VisitorView: UIView {

   class func visitorView()->VisitorView{
        return Bundle.main.loadNibNamed("VisitorView", owner: nil, options: nil)?.first as! VisitorView
        
    }

}
