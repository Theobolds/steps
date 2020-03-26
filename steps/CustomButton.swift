//
//  CustomButton.swift
//  steps
//
//  Created by alex theobold on 26/03/2020.
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
        backgroundColor = .black
        layer.borderWidth = 1
        layer.borderColor = UIColor.systemTeal.cgColor
        layer.cornerRadius = 20
        heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
}