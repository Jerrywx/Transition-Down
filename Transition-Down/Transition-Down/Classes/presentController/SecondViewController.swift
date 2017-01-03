//
//  SecondViewController.swift
//  Transition-Down
//
//  Created by 王潇 on 2017/1/1.
//  Copyright © 2017年 王潇. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		title = "第二个控制器"
        view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
		
		
		let button = UIButton(type: UIButtonType.contactAdd)
		button.center = CGPoint(x: 100, y: 100)
		view.addSubview(button)
    }
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		self.dismiss(animated: true, completion: nil)
	}
}
