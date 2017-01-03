//
//  AnimationDismissing.swift
//  Transition-Down
//
//  Created by 王潇 on 2017/1/1.
//  Copyright © 2017年 王潇. All rights reserved.
//

import UIKit

class AnimationDismissing: NSObject, UIViewControllerAnimatedTransitioning {

	
	/// 转场动画时间
	///
	/// - Parameter transitionContext: 上下文
	/// - Returns: 转场动画时间
	func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
		return 1.4
	}
	
	
	/// 转场动画
	///
	/// - Parameter transitionContext: 转场上下文
	func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
		
		/// 在 dismiss 中 
		/// fromVC : 表示 SecondViewController
		/// toVC   : 表示 ViewController
		/// containerView 上包含 fromVC 的 view
		/// 将 toVC view 添加到 containerView 并 至于 fromVC.view 的底部
		
		/// 1. 获取 fromVC
		let fromVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)
		let toVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)
		let containerView = transitionContext.containerView
		
//		containerView.addSubview((toVC?.view)!)
//		containerView.sendSubview(toBack: (toVC?.view)!)
		
		let time = self.transitionDuration(using: transitionContext)
		
		UIView.animate(withDuration: time, animations: {
			fromVC?.view.alpha = 0;
		}) { (bool: Bool) in
			transitionContext.completeTransition(true)
		}
	}

	/// 转场结束收尾工作
	///
	/// - Parameter transitionCompleted: 转场是否结束
	func animationEnded(_ transitionCompleted: Bool) {
		if transitionCompleted {
			NSLog("dismiss 成功")
		} else {
			NSLog("dismiss 失败")
		}
	}
}
