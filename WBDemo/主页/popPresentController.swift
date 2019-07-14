//
//  popPresentController.swift
//  WBDemo
//
//  Created by MainBack on 2019/7/14.
//  Copyright © 2019 MainBack. All rights reserved.
//

import UIKit

class popPresentController: UIPresentationController {
    private lazy var coverView : UIView = UIView()
    override func containerViewWillLayoutSubviews() {
        super.containerViewWillLayoutSubviews()
        presentedView?.frame = CGRect(x: 50, y: 50, width: 200, height: 280)
        setupCoverView()
    }
}
extension popPresentController{
    private func setupCoverView(){
        containerView?.insertSubview(coverView, at: 0)
        coverView.backgroundColor = UIColor(white: 0.8, alpha: 0.8)
        coverView.frame = containerView!.bounds
        let tapGes = UITapGestureRecognizer(target: self, action: #selector(coverViewClick))
        coverView.addGestureRecognizer(tapGes)
    }
}

extension popPresentController{
    @objc private func coverViewClick(){
       presentedViewController.dismiss(animated: true, completion: nil)
    }
}
