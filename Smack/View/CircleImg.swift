//
//  CircleImg.swift
//  Smack
//
//  Created by Raghav Vashisht on 28/07/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImg: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
}
