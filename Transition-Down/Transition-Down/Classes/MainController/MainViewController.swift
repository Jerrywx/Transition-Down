//
//  MainViewController.swift
//  Transition-Down
//
//  Created by 王潇 on 2017/1/1.
//  Copyright © 2017年 王潇. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

	var tableView: UITableView?
	
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		
		///
		tableView = UITableView(frame: view.frame, style: UITableViewStyle.plain)
		tableView?.delegate = self
		tableView?.dataSource = self
		tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
		view.addSubview(tableView!)
    }
}

extension MainViewController : UITableViewDataSource, UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 4
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
		cell?.textLabel?.text = "CEEE"
		return cell!
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
		let s = SystemViewController()
		self.navigationController?.pushViewController(s, animated: true)
	}
	
}
