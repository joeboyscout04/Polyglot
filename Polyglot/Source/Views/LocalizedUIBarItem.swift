//
//  LocalizedBarButtonItem.swift
//  SmartPlug
//
//  Created by Joseph Elliott on 2017-09-29.
//  Copyright © 2017 Daresay. All rights reserved.
//

import UIKit

@IBDesignable
class LocalizedUIBarItem: UIBarItem {
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.title = self.title.map { Bundle(for: type(of: self)).localizedString(forKey: $0, value: nil, table: nil) }
    }
}
