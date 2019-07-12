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
    

    @IBOutlet weak var Btn_Register: UIButton!
    @IBOutlet weak var Btn_Login: UIButton!
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    func setupView( title : String , img : String,color : UIColor){
        Title.text = title;
        self.img.image = UIImage(named: img)
        backgroundColor = color
    }
    
    
    func startRotationAnim(){
        let rotationAnim = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnim.fromValue = 0
        rotationAnim.toValue = Double.pi * 2
        rotationAnim.repeatCount = MAXFLOAT
        rotationAnim.duration = 1
        rotationAnim.isRemovedOnCompletion = false //设置切换后不会重置
        img.layer.add(rotationAnim, forKey: nil)
    }
    
}
