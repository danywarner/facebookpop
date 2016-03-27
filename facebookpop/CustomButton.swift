//
//  CustomButton.swift
//  facebookpop
//
//  Created by Daniel Warner on 3/27/16.
//  Copyright © 2016 Daniel Warner. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            setupView()
        }
    }
    
    
    @IBInspectable var fontColor: UIColor = UIColor.whiteColor() {
        didSet {
            self.tintColor = fontColor
        }
    }
    
    override func awakeFromNib() {
        setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
}
