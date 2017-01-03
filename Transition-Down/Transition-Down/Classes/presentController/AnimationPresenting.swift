//
//  AnimationPresenting.swift
//  Transition-Down
//
//  Created by 王潇 on 2017/1/1.
//  Copyright © 2017年 王潇. All rights reserved.
//

import UIKit

class AnimationPresenting: NSObject, UIViewControllerAnimatedTransitioning {

	
	/// 返回动画时间
	///
	/// - Parameter transitionContext: 上下文
	/// - Returns: 返回动画时间
	func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
		return 1.4
	}
	
	
	/// 执行动画的地方，最核心的方法。
	///
	/// - Parameter transitionContext: 上下文
	func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
		
		let containerView = transitionContext.containerView
		
		let toVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)
		
		containerView.addSubview((toVC?.view)!)
		toVC?.view.alpha = 0
		toVC?.view.frame = CGRect.zero
		let frame = CGRect(x: 40, y: 40, width: UIScreen.main.bounds.size.width - 80, height: UIScreen.main.bounds.size.height - 80)
		
		let time = self.transitionDuration(using: transitionContext);
		
		UIView.animate(withDuration: time, animations: { 
			toVC?.view.alpha = 1.0
			toVC?.view.frame = frame
		}) { (bool: Bool) in
			transitionContext.completeTransition(true)
		}
	}
	
	
	/// 如果实现了，会在转场动画结束后调用，可以执行一些收尾工作。
	///
	/// - Parameter transitionCompleted: 转场是否结束
	func animationEnded(_ transitionCompleted: Bool) {
		if transitionCompleted {
			NSLog("转场正常结束")
		} else {
			NSLog("转场正常结束=======")
		}
	}
}
