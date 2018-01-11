//
//  LocalizedTextView.swift
//  SmartPlug
//
//  Created by Joseph Elliott on 2017-09-29.
//  Copyright © 2017 Daresay. All rights reserved.
//

import UIKit

@IBDesignable
class LocalizedUITextView: UITextView {
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.text = Bundle(for: type(of: self)).localizedString(forKey: self.text, value: nil, table: nil)
    }
}
