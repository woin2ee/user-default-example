//
//  SwitchCell.swift
//  UserDefaultExample
//
//  Created by Jaewon on 2022/06/13.
//

import UIKit

class SwitchCell: UITableViewCell {
    
    @IBOutlet private weak var icon: UIImageView!
    @IBOutlet private weak var content: UILabel!
    @IBOutlet private weak var toggleSwitch: UISwitch!
    
    private var viewModel: MainViewModel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewModel = DefaultMainViewModel()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func toggleSwitchClicked(_ sender: UISwitch) {
        guard let key = SwitchCellName(rawValue: content.text!) else { return }
        viewModel.didUpdateUserDefaults(value: toggleSwitch.isOn, forKey: key)
    }
    
    func setCell(data: SwitchCellData) {
        icon.image = UIImage(systemName: data.iconName)
        content.text = data.content.rawValue
        toggleSwitch.isOn = data.state
    }
}
