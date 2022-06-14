//
//  MainViewModel.swift
//  UserDefaultExample
//
//  Created by Jaewon on 2022/06/14.
//

import Foundation

protocol MainViewModelInput {
    
}

protocol MainViewModelOutput {
    var settingData: [SwitchCellData] { get }
}

protocol MainViewModel: MainViewModelInput, MainViewModelOutput {}

class DefaultMainViewModel: MainViewModel {
    
    var settingData: [SwitchCellData]
    
    init() {
        self.settingData = [.init("airplane.circle.fill", "비행기 모드", UserDefaults.standard.bool(forKey: "비행기 모드"))]
    }
}

struct SwitchCellData {
    
    let iconName: String
    let content: String
    var state: Bool
    
    init(_ iconName: String, _ content: String, _ state: Bool) {
        self.iconName = iconName
        self.content = content
        self.state = state
    }
}
