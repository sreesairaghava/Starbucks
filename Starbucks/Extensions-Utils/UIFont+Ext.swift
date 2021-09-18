//
//  UIFont+Ext.swift
//  Starbucks
//
//  Created by Sree Sai Raghava Dandu on 11/09/21.
//

import UIKit

extension UIFont{
    func withTraits(traits: UIFontDescriptor.SymbolicTraits) -> UIFont{
        let descriptor = fontDescriptor.withSymbolicTraits(traits)
        return UIFont(descriptor: descriptor!, size: 0)
    }
    
    func bold() -> UIFont{
        return withTraits(traits: .traitBold)
    }
}
