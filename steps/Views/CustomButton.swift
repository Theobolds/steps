//
//  CustomButton.swift
//  steps
//
//  Created by alex theobold on 13/04/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        backgroundColor = .lightGray
        layer.borderWidth = 1
        layer.borderColor = UIColor.systemTeal.cgColor
        layer.cornerRadius = 20
    }
}

