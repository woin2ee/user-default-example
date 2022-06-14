//
//  SwitchCell.swift
//  UserDefaultExample
//
//  Created by Jaewon on 2022/06/13.
//

import UIKit

class SwitchCell: UITableViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func toggleSwitchClicked(_ sender: UISwitch) {
        print(toggleSwitch.isOn)
        print(content.text!)
        UserDefaults.standard.set(toggleSwitch.isOn, forKey: content.text!)
    }
}
