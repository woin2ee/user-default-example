//
//  ViewController.swift
//  UserDefaultExample
//
//  Created by Jaewon on 2022/06/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var settingTable: UITableView!
    
    let list = ["1", "2", "3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingTable.dataSource = self
        settingTable.delegate = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settingTable.dequeueReusableCell(withIdentifier: String(describing: SwitchCell.self)) as! SwitchCell
        
        
        
        return cell
    }
}
