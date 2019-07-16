//
//  MainController.swift
//  WBDemo
//
//  Created by MainBack on 2019/7/9.
//  Copyright © 2019 MainBack. All rights reserved.
//

import UIKit

class HomeController: BaseController {
   
    private lazy var anim : PopupAnim = PopupAnim()
    
    lazy private var titleBtn : UIButton = TitleBtn()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginView.startRotationAnim()
        setNavView()
        
    }
}
//MARK: - 初始化操作
extension HomeController{
    private func setNavView(){
        //            navigationItem.leftBarButtonItem = UIBarButtonItem(imgName: "renren")
        //            navigationItem.rightBarButtonItem = UIBarButtonItem(imgName: "erweima")
        titleBtn.addTarget(self, action: #selector(onTitleBtnClick), for: .touchUpInside)
        navigationItem.titleView = titleBtn
        
    }
    
}

extension HomeController{
    @objc private func onTitleBtnClick(){
        titleBtn.isSelected = !titleBtn.isSelected
        let vc = PopController()
        vc.modalPresentationStyle = .custom
        vc.transitioningDelegate = anim
        self.present(vc, animated: true, completion: nil)
        
    }
    
}

