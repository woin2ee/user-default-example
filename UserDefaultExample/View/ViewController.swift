//
//  ViewController.swift
//  UserDefaultExample
//
//  Created by Jaewon on 2022/06/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var settingTable: UITableView!
    
    var list: [SwitchCell.Data] = [
        .init(icon: UIImage(systemName: "gearshape"), content: "a", state: false),
        .init(icon: UIImage(systemName: "airplane.circle.fill"), content: "b", state: true),
        .init(icon: UIImage(systemName: "book"), content: "c", state: true),
        .init(icon: UIImage(systemName: "person"), content: "d", state: false)
    ]
    
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
        
        cell.icon.image = list[indexPath.row].icon
        cell.content.text = list[indexPath.row].content
        cell.toggleSwitch.isOn = list[indexPath.row].state
        
        return cell
    }
}
