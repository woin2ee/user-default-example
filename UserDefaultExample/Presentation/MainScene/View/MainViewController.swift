//
//  MainViewController.swift
//  UserDefaultExample
//
//  Created by Jaewon on 2022/06/13.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private weak var settingTable: UITableView! {
        didSet {
            settingTable.dataSource = self
            settingTable.delegate = self
        }
    }
    
    private var viewModel: MainViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = DefaultMainViewModel()
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.settingData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = settingTable.dequeueReusableCell(withIdentifier: String(describing: SwitchCell.self)) as! SwitchCell
        cell.setCell(data: viewModel.settingData[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return false
    }
}
