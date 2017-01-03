//
//  System2ViewController.swift
//  Transition-Down
//
//  Created by 王潇 on 2017/1/1.
//  Copyright © 2017年 王潇. All rights reserved.
//

import UIKit

protocol System2ViewControllerDelegate {
	
	/// dismiss
	func system2ViewControllerDismiss()
}

class System2ViewController: UIViewController {

	var delegate : System2ViewControllerDelegate?
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "System 2"
		view.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    }
}
