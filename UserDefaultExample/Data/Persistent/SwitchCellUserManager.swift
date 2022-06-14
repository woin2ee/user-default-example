//
//  SwitchCellUserManager.swift
//  UserDefaultExample
//
//  Created by Jaewon on 2022/06/13.
//

import Foundation

struct SwitchCellUserManager {
    
    @SwitchCellUserDefault(key: .airplaneMode, defaultValue: false)
    static var isAirplainModeOn: Bool
    
    @SwitchCellUserDefault(key: .wifi, defaultValue: false)
    static var isWifiOn: Bool
    
    @SwitchCellUserDefault(key: .cellularData, defaultValue: false)
    static var isCellularDataOn: Bool
    
    @SwitchCellUserDefault(key: .bluetooth, defaultValue: false)
    static var isBluetoothOn: Bool
    
    static func setUserDefault(value: Bool, forkey key: SwitchCellName) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    
    static func getUserDefault(forkey key: SwitchCellName) -> Bool {
        UserDefaults.standard.bool(forKey: key.rawValue)
    }
}

@propertyWrapper
struct SwitchCellUserDefault<T> {
    let key: SwitchCellName
    let defaultValue: T
    
    var wrappedValue: T {
        get { UserDefaults.standard.object(forKey: self.key.rawValue) as? T ?? self.defaultValue}
        set { UserDefaults.standard.set(newValue, forKey: self.key.rawValue) }
    }
}
