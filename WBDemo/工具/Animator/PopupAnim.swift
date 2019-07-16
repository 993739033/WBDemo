//
//  Anim.swift
//  WBDemo
//
//  Created by MainBack on 2019/7/16.
//  Copyright © 2019 MainBack. All rights reserved.
//
//实现转场动画
import UIKit

class PopupAnim: NSObject {
    var isPresented : Bool = false
    var callBack:((_ pressed :Bool)->())?
    
    init(callBack : @escaping (_ pressed : Bool)->()){
        self.callBack  = callBack
    }
}

extension PopupAnim : UIViewControllerTransitioningDelegate{
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return popPresentController(presentedViewController: presented, presenting: presenting)
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        isPresented = true
        callBack!(true)
        return self
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        isPresented = false
        callBack!(false)
        return self
    }
    
}

extension PopupAnim : UIViewControllerAnimatedTransitioning{
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.2
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        isPresented ? presentedAnim(using: transitionContext) : dismissedAnim(using: transitionContext)
    }
    
    private func presentedAnim(using transitionContext: UIViewControllerContextTransitioning){
        let presentView = transitionContext.view(forKey: UITransitionContextViewKey.to)!
        transitionContext.containerView.addSubview(presentView)
        presentView.layer.anchorPoint = CGPoint.init(x: 0.5, y: 0)
        presentView.transform = CGAffineTransform.init(scaleX: 1.0, y: 0.0)
        
        UIView.animate(withDuration: transitionDuration(using: transitionContext), delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 3, options: [], animations: {
            presentView.transform  = CGAffineTransform.identity
        }) { (_) in
            transitionContext.completeTransition(true)
        }
    }
    
    
    private func dismissedAnim(using transitionContext: UIViewControllerContextTransitioning){
        let dismissView = transitionContext.view(forKey: UITransitionContextViewKey.from)!
        
        UIView.animate(withDuration: transitionDuration(using: transitionContext), delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 2, options: [], animations: {
            dismissView.transform  = CGAffineTransform(scaleX: 1.0, y: 0.0001)
        }) { (_) in
            dismissView.removeFromSuperview()
            transitionContext.completeTransition(true)
        }
        
    }
    
}


