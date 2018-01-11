//
//  LocalizedLabel.swift
//  SmartPlug
//
//  Created by Joseph Elliott on 2017-09-29.
//  Copyright © 2017 Daresay. All rights reserved.
//

import UIKit

@IBDesignable
class LocalizedUILabel: UILabel {
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.text = self.text.map { Bundle(for: type(of: self)).localizedString(forKey: $0, value: nil, table: nil) }
    }
}
