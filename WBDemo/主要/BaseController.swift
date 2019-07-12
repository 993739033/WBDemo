//
//  BaseController.swift
//  WBDemo
//
//  Created by MainBack on 2019/7/10.
//  Copyright © 2019 MainBack. All rights reserved.
//

import UIKit

class BaseController: UITableViewController {
    
    var isLogin : Bool = true
    
    lazy var LoginView:VisitorView = VisitorView.visitorView()
    
    override func loadView() {
        isLogin ? super.loadView() : setupLoginView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if isLogin {
           return
        }
         setNavigationView()
    }

}

extension BaseController{
    private func setupLoginView(){
//        LoginView.backgroundColor = UIColor.cyan
        view = LoginView;
    }
    
    private func setNavigationView(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "注册", style: .plain, target: self, action: #selector(onRegisterClick))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登录", style: .plain, target: self, action: #selector(onLoginClick))
        LoginView.Btn_Login.addTarget(self, action: #selector(onLoginClick), for: .touchUpInside)
        LoginView.Btn_Register.addTarget(self, action: #selector(onRegisterClick), for: .touchUpInside)
    }
    
}

//MARK:- 设置监听
extension BaseController{
    @objc private func onRegisterClick(){
        print("register")
    }
    
    @objc private func onLoginClick(){
        print("login")
    }
}
