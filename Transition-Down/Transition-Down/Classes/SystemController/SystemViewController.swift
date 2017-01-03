//
//  SystemViewController.swift
//  Transition-Down
//
//  Created by 王潇 on 2017/1/1.
//  Copyright © 2017年 王潇. All rights reserved.
//

import UIKit

class SystemViewController: UIViewController, System2ViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

		title = "System 1"
		view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
	
	
	/*
	UIModalTransitionStyleCoverVertical = 0,
	UIModalTransitionStyleFlipHorizontal __TVOS_PROHIBITED,
	UIModalTransitionStyleCrossDissolve,
	UIModalTransitionStylePartialCurl NS_ENUM_AVAILABLE_IOS(3_2) __TVOS_PROHIBITED,
	*/
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		let sysVC = System2ViewController()
		sysVC.delegate = self
//		sysVC.modalTransitionStyle = UIModalTransitionStyle.coverVertical
//		sysVC.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
//		sysVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
//		sysVC.modalTransitionStyle = UIModalTransitionStyle.partialCurl

		///
//		sysVC.modalPresentationStyle = UIModalPresentationStyle.formSheet
//		UIAlertController
//		self.present(sysVC, animated: true, completion: nil)
	
	
	
	
	
	
	
		let alertController = UIAlertController(title: "一点都简单", message: "来自一点都简单的Alert", preferredStyle: UIAlertControllerStyle.actionSheet)
		
		let deleteAction = UIAlertAction(title: "删除", style: UIAlertActionStyle.destructive, handler: {(alert :UIAlertAction!) in
			print("Delete button tapped")
		})
		alertController.addAction(deleteAction)
		
		let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(alert :UIAlertAction!) in
			print("OK button tapped")
		})
		alertController.addAction(okAction)
		alertController.modalPresentationStyle = UIModalPresentationStyle.overFullScreen
		present(alertController, animated: true, completion: nil)
	
	
	
	
	}
	
	func system2ViewControllerDismiss() {
		self.dismiss(animated: true, completion: nil)
	}
	
	
	
	
}
