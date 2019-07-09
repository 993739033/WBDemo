//
//  MainTabController.swift
//  WBDemo
//
//  Created by MainBack on 2019/7/9.
//  Copyright © 2019 MainBack. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {
    
    private lazy var composeBtn:UIButton = UIButton(bgName: "add_1", bgLighterName: "add_2")

    override func viewDidLoad() {
        super.viewDidLoad()
        setComposeBtn()
        
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //mark: 记得调用super
        super.viewWillAppear(animated)
        setBtnEnable()

    }

}
//Mark:- 设置UI界面
extension MainTabController{
    private func setComposeBtn(){
//        composeBtn=UIButton.getUIButton(bgName: "add_1", bgLighterName: "add_2")
//        composeBtn.sizeToFit()
        
        composeBtn.center = CGPoint(x: tabBar.center.x, y: tabBar.bounds.size.height*0.5 )
        tabBar.addSubview(composeBtn)
        composeBtn.addTarget(self, action: #selector(onComposeBtnClick), for: .touchUpInside)
        
    }
    
    
    private func setBtnEnable(){
         tabBar.items![2].isEnabled=false;
    }
   
}

//MARK:- 这里做事件监听的扩展
extension MainTabController{
    @objc private func onComposeBtnClick(){
        print("onCompostBtnClick")
    }
}
