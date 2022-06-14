//
//  MainViewController.swift
//  UserDefaultExample
//
//  Created by Jaewon on 2022/06/13.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private weak var settingTable: UITableView!
    
    private let viewModel: MainViewModel = DefaultMainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingTable.dataSource = self
        settingTable.delegate = self
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.settingData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settingTable.dequeueReusableCell(withIdentifier: String(describing: SwitchCell.self)) as! SwitchCell
        
        cell.icon.image = UIImage(systemName: viewModel.settingData[indexPath.row].iconName)
        cell.content.text = viewModel.settingData[indexPath.row].content.rawValue
        cell.toggleSwitch.isOn = viewModel.settingData[indexPath.row].state
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return false
    }
}
