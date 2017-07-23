//
//  RoundedBtn.swift
//  Smack
//
//  Created by Raghav Vashisht on 23/07/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedBtn: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setUpView()
    }
    func setUpView() {
        self.layer.cornerRadius = cornerRadius
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
}
