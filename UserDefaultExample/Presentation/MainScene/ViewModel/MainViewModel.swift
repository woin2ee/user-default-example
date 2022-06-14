//
//  MainViewModel.swift
//  UserDefaultExample
//
//  Created by Jaewon on 2022/06/14.
//

import Foundation

enum SwitchCellName: String {
    case airplaneMode = "에어플레인 모드"
    case wifi = "Wi-Fi"
    case cellularData = "셀룰러 데이터"
    case bluetooth = "Bluetooth"
}

protocol MainViewModelInput {
    
}

protocol MainViewModelOutput {
    var settingData: [SwitchCellData] { get }
}

protocol MainViewModel: MainViewModelInput, MainViewModelOutput {}

class DefaultMainViewModel: MainViewModel {
    
    var settingData: [SwitchCellData]
    
    init() {
        self.settingData = [
            .init("airplane.circle.fill", .airplaneMode),
            .init("wifi.circle.fill", .wifi),
            .init("doc.circle.fill", .cellularData),
            .init("link.circle.fill", .bluetooth)
        ]
    }
}

struct SwitchCellData {
    let iconName: String
    let content: SwitchCellName
    var state: Bool {
        SwitchCellUserManager.getUserDefault(forkey: content)
    }
    
    init(_ iconName: String, _ content: SwitchCellName) {
        self.iconName = iconName
        self.content = content
    }
}
