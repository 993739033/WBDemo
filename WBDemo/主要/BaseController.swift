//
//  BaseController.swift
//  WBDemo
//
//  Created by MainBack on 2019/7/10.
//  Copyright © 2019 MainBack. All rights reserved.
//

import UIKit

class BaseController: UITableViewController {
    
    var isLogin : Bool = false
    
    lazy var LoginView:VisitorView = VisitorView.visitorView()
    
    override func loadView() {
        isLogin ? super.loadView() : setupLoginView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension BaseController{
    private func setupLoginView(){
//        LoginView.backgroundColor = UIColor.cyan
        view = LoginView;
    }
    
}
