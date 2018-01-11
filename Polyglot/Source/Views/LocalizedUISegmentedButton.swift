//
//  LocalizedSegmentedButton.swift
//  SmartPlug
//
//  Created by Joseph Elliott on 2017-09-29.
//  Copyright © 2017 Daresay. All rights reserved.
//

import UIKit


@IBDesignable
class LocalizedUISegmentedControl: UISegmentedControl {

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        for index in 0..<numberOfSegments {
            let title = self.titleForSegment(at: index).map {Bundle(for: type(of: self)).localizedString(forKey: $0, value: nil, table: nil) }
            setTitle(title, forSegmentAt: index)
        }
    }
}
