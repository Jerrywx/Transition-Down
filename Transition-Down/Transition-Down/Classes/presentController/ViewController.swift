//
//  ViewController.swift
//  Transition-Down
//
//  Created by 王潇 on 2016/12/31.
//  Copyright © 2016年 王潇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let presenting: AnimationPresenting = AnimationPresenting()
	let dismissind: AnimationDismissing = AnimationDismissing()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		title = "第一个控制器"
		view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
		
		let button = UIButton(type: UIButtonType.contactAdd)
		button.center = CGPoint(x: 100, y: 200)
		view.addSubview(button)
	}
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		let vc = SecondViewController()
		vc.transitioningDelegate = self
		vc.modalPresentationStyle = UIModalPresentationStyle.custom;//UIModalPresentationCustom;
//		navigationController?.pushViewController(vc, animated: true)
		self.present(vc, animated: true, completion: nil)
	}
}

extension ViewController: UIViewControllerTransitioningDelegate{
	
	func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
		return self.presenting
	}
	
	func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
		return self.dismissind
	}
}

